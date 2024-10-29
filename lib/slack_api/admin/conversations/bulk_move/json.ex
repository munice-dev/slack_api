defmodule SlackAPI.Admin.Conversations.BulkMove do
  @enforce_keys [:channel_ids, :target_team_id, :token]
  defstruct [:channel_ids, :target_team_id, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.bulkMove"
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