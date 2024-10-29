defmodule SlackAPI.Files.Remote.Update do
  @enforce_keys [:token]
  defstruct [
    :token,
    :external_id,
    :external_url,
    :file,
    :filetype,
    :indexable_file_contents,
    :preview_image,
    :title
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "files.remote.update"
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