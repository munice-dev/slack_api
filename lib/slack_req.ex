defmodule SlackReq do
  require Logger
  use Tesla

  @spec client(String.t(), :get | :post, String.t() | nil) :: Tesla.Client.t()
  def client(base_url, method, token) do
    middleware = [{Tesla.Middleware.BaseUrl, base_url}]

    middleware =
      if token != nil do
        [{Tesla.Middleware.BearerAuth, token: token} | middleware]
      else
        middleware
      end

    middleware =
      case method do
        :get ->
          [Tesla.Middleware.FormUrlencoded | middleware]

        :post ->
          [
            {Tesla.Middleware.JSON, encode_content_type: "application/json; charset=utf-8"}
            | middleware
          ]

        _ ->
          middleware
      end

    Tesla.client(middleware)
  end

  @spec action(SlackAPI.t()) :: {:ok, term()} | {:error, String.t()}
  def action(data) do
    headers = SlackAPI.headers(data)
    base_url = SlackAPI.base_url(data)
    url = SlackAPI.url(data)
    method = SlackAPI.method(data)
    token = Enum.find_value(headers, fn :token -> data.token end)

    args =
      data
      |> Map.from_struct()
      |> Enum.reject(fn {k, _} -> k in headers end)
      |> Enum.filter(fn {_, v} -> v != nil end)
      |> Map.new()

    options =
      case method do
        :get ->
          [query: args, url: url, method: method]

        :post ->
          [body: args, url: url, method: method]
      end

    req(client(base_url, method, token), options)
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
