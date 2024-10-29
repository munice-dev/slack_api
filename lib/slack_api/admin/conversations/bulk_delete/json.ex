defmodule SlackAPI.Admin.Conversations.BulkDelete do
  @enforce_keys [:channel_ids, :token]
  defstruct [:channel_ids, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.bulkDelete"
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