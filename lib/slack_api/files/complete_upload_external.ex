defmodule SlackAPI.Files.CompleteUploadExternal do
  @enforce_keys [:files, :token]
  defstruct [:files, :token, :channel_id, :initial_comment, :thread_ts]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "files.completeUploadExternal"
      end

      def headers(_) do
        [:token]
      end

      def method(_) do
        :post
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