defmodule SlackAPI.Conversations.ExternalInvitePermissions.Set do
  @enforce_keys [:action, :channel, :target_team, :token]
  defstruct [:action, :channel, :target_team, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.externalInvitePermissions.set"
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