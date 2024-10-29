defmodule SlackAPI.Admin.Conversations.RestrictAccess.AddGroup do
  @enforce_keys [:channel_id, :group_id, :token]
  defstruct [:channel_id, :group_id, :token, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.restrictAccess.addGroup"
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