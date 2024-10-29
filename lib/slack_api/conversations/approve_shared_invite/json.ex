defmodule SlackAPI.Conversations.ApproveSharedInvite do
  @enforce_keys [:invite_id, :token]
  defstruct [:invite_id, :token, :target_team]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.approveSharedInvite"
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