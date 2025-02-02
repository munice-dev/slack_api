defmodule SlackAPI.Conversations.RequestSharedInvite.Approve do
  @enforce_keys [:invite_id, :token]
  defstruct [:invite_id, :token, :channel_id, :is_external_limited, :message]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.requestSharedInvite.approve"
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