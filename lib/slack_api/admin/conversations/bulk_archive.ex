defmodule SlackAPI.Admin.Conversations.BulkArchive do
  @enforce_keys [:channel_ids, :token]
  defstruct [:channel_ids, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.bulkArchive"
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