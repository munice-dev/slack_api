defmodule Mix.Tasks.Slack.Doc do
  require Logger

  @root_dir File.cwd!()
  @module_prefix SlackAPI

  def root_dir(), do: @root_dir
  def module_prefix(), do: @module_prefix

  @fields [
    :json,
    :file,
    :module,
    :base_url,
    :url,
    :headers,
    :args,
    :args_required,
    :method
  ]
  @enforce_keys @fields
  defstruct @fields

  @spec get_list() :: %{module() => %Mix.Tasks.Slack.Doc{}}
  def get_list() do
    File.ls!("#{root_dir()}/docs")
    |> generate_docs()
  end

  @spec generate_docs([String.t()]) :: %{module() => %Mix.Tasks.Slack.Doc{}}
  defp generate_docs(files) do
    Enum.reduce(files, %{}, fn file, docs ->
      json =
        File.read!("#{root_dir()}/docs/#{file}")
        |> Jason.decode!(%{})

      doc = new(json, file)
      put_in(docs[doc.module], doc)
    end)
  end

  @spec new(map(), String.t()) :: %Mix.Tasks.Slack.Doc{}
  def new(json, file) do
    base_url = Application.get_env(:slack, :url, "https://slack.com/api")
    url = String.replace(file, ".json", "")

    module =
      url
      |> String.split(".")
      |> Enum.map(&Macro.camelize/1)
      |> Enum.map(&String.to_atom(&1))
      |> Module.concat()

    module = Module.concat(module_prefix(), module)

    args_required = parse_args(json, true)
    args = args_required ++ parse_args(json, false)
    headers = parse_headers(json)
    method = parse_method(json)

    # Logger.debug("""
    # > #{file}.ex
    # > [#{inspect(module)}] #{inspect(method)} #{inspect(headers)} args #{inspect(args -- headers)}
    # """)

    struct(Mix.Tasks.Slack.Doc,
      json: json,
      file: file,
      base_url: base_url,
      url: url,
      module: module,
      headers: headers,
      args: args,
      args_required: args_required,
      method: method
    )
  end

  defp parse_args(%{"args" => args}, required?) do
    args
    |> Enum.filter(fn {_name, meta} ->
      if required? do
        meta["required"]
      else
        !meta["required"]
      end
    end)
    |> Enum.map(&String.to_atom(elem(&1, 0)))
  end

  defp parse_args(_, _required?), do: []

  defp parse_headers(%{"args" => args}) do
    args
    |> Enum.filter(fn {name, _meta} ->
      name == "token"
    end)
    |> Enum.map(&String.to_atom(elem(&1, 0)))
  end

  defp parse_headers(_), do: []

  defp parse_method(%{"content_types" => content_types}) do
    if Enum.any?(content_types, fn type ->
         type == "application/json"
       end) do
      :post
    else
      :get
    end
  end
end
