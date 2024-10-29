defmodule SlackAPI.Conversations.ListConnectInvites do
  @enforce_keys [:token]
  defstruct [:token, :count, :cursor, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.listConnectInvites"
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