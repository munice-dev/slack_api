defmodule SlackAPI.Conversations.InviteShared do
  @enforce_keys [:channel, :token]
  defstruct [:channel, :token, :emails, :external_limited, :user_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.inviteShared"
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