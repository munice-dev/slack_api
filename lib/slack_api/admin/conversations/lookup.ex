defmodule SlackAPI.Admin.Conversations.Lookup do
  @enforce_keys [:last_message_activity_before, :team_ids, :token]
  defstruct [:last_message_activity_before, :team_ids, :token, :cursor, :limit, :max_member_count]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.lookup"
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