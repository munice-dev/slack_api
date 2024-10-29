defmodule Mix.Tasks.SlackAPI.Gen do
  @moduledoc """
  generate modules using API information from the slack_doc/*.json

  ## Examples
  $mix slack_api.gen
  """
  use Mix.Task

  @impl Mix.Task
  def run(_args) do
    Enum.each(Mix.Tasks.Slack.Doc.get_list(), fn {module_name, doc} ->
      enforce_keys = doc.args_required
      defstruct_keys = doc.args

      fields = Map.take(doc, [:base_url, :url, :headers, :method]) |> Map.to_list()

      function_defs =
        Enum.map(fields, fn {name, value} ->
          quote do
            def unquote(name)(_), do: unquote(value)
          end
        end)

      body =
        quote do
          defmodule unquote(module_name) do
            @enforce_keys unquote(enforce_keys)
            defstruct unquote(defstruct_keys)

            defimpl SlackAPI do
              (unquote_splicing(function_defs))

              def req(data), do: SlackReq.action(data)
            end
          end
        end

      file_path =
        "#{Mix.Tasks.Slack.Doc.root_dir()}/lib/slack_api/#{Macro.underscore(doc.file)}.ex"

      File.mkdir_p!(file_path |> Path.expand() |> Path.dirname())
      File.write!(file_path, Macro.to_string(body), [:write])

      # IO.puts(">> file > #{doc.file} #{file_path}")
      # Code.compiler_options(ignore_module_conflict: true)
      # Code.compile_quoted(body)
      # Code.compiler_options(ignore_module_conflict: false)
    end)
  end
end
