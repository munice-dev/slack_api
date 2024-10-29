defmodule SlackAPI.Admin.Conversations.RestrictAccess.RemoveGroup do
  @enforce_keys [:channel_id, :group_id, :team_id, :token]
  defstruct [:channel_id, :group_id, :team_id, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.restrictAccess.removeGroup"
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