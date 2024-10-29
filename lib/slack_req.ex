defmodule SlackReq do
  require Logger
  use Tesla

  @spec client(SlackAPI.t()) :: Tesla.Client.t()
  def client(data) do
    token =
      Enum.find_value(SlackAPI.headers(data), fn :token ->
        data.token
      end)

    client(SlackAPI.base_url(data), SlackAPI.method(data), token)
  end

  @spec client(String.t(), :post | :get, String.t() | nil) :: Tesla.Client.t()
  def client(url, method, token \\ nil) do
    middleware = [
      {Tesla.Middleware.BaseUrl, url},
      Tesla.Middleware.FormUrlencoded
    ]

    middleware =
      if token != nil do
        [{Tesla.Middleware.BearerAuth, token: token} | middleware]
      else
        middleware
      end

    middleware =
      if method == :post do
        [Tesla.Middleware.JSON | middleware]
      else
        middleware
      end

    Tesla.client(middleware)
  end

  @spec action(SlackAPI.t()) :: {:ok, term()} | {:error, String.t()}
  def action(data) do
    args =
      data
      |> Map.from_struct()
      |> Enum.reject(fn {k, _} -> k in SlackAPI.headers(data) end)
      |> Enum.filter(fn {_, v} -> v != nil end)
      |> Map.new()

    req(client(data),
      body: args,
      url: SlackAPI.url(data),
      method: SlackAPI.method(data)
    )
  end

  @spec req(Tesla.Client.t(), url: String.t(), body: binary(), method: :post | :get) ::
          {:ok, term()} | {:error, String.t()}
  def req(client, options) do
    case Tesla.request(client, options) do
      {:ok, %Tesla.Env{body: %{"ok" => true} = body}} ->
        # Logger.debug("""
        # Tesla.request ------>>>>
        # client >> #{inspect(client, pretty: true)}
        # options >> #{inspect(options, pretty: true)}
        # """)

        {:ok, body}

      {:ok, %Tesla.Env{body: body}} ->
        Logger.warning("""
        client >> #{inspect(client, pretty: true)}
        options >> #{inspect(options, pretty: true)}
        """)

        {:error, inspect(body)}

      e ->
        Logger.warning("""
        client >> #{inspect(client, pretty: true)}
        options >> #{inspect(options, pretty: true)}
        """)

        e
    end
  end
end
