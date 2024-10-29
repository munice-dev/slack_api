defmodule SlackAPI.Conversations.RequestSharedInvite.Deny do
  @enforce_keys [:invite_id, :token]
  defstruct [:invite_id, :token, :message]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.requestSharedInvite.deny"
      end

      def headers(_) do
        [:token]
      end

      def base_url(_) do
        "https://slack.com/api"
      end

      def method(_) do
        :post
      end
    )

    def req(data) do
      SlackReq.action(data)
    end
  end
end