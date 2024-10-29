defmodule SlackAPI.Admin.Conversations.RestrictAccess.ListGroups do
  @enforce_keys [:channel_id, :token]
  defstruct [:channel_id, :token, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.restrictAccess.listGroups"
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