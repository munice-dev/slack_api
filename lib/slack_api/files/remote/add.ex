defmodule SlackAPI.Files.Remote.Add do
  @enforce_keys [:external_id, :external_url, :title, :token]
  defstruct [
    :external_id,
    :external_url,
    :title,
    :token,
    :filetype,
    :indexable_file_contents,
    :preview_image
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "files.remote.add"
      end

      def headers(_) do
        [:token]
      end

      def method(_) do
        :get
      end

      def base_url(_) do
        "https://slack.com/api"
      end
    )

    def req(data) do
      SlackReq.action(data)
    end
  end
end