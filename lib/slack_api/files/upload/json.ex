defmodule SlackAPI.Files.Upload do
  @enforce_keys [:token]
  defstruct [
    :token,
    :channels,
    :content,
    :file,
    :filename,
    :filetype,
    :initial_comment,
    :thread_ts,
    :title
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "files.upload"
      end

      def headers(_) do
        [:token]
      end

      def base_url(_) do
        "https://slack.com/api"
      end

      def method(_) do
        :get
      end
    )

    def req(data) do
      SlackReq.action(data)
    end
  end
end