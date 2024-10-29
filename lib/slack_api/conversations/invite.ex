defmodule SlackAPI.Conversations.Invite do
  @enforce_keys [:channel, :token, :users]
  defstruct [:channel, :token, :users, :force]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.invite"
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