defmodule SlackAPI.Conversations.Kick do
  @enforce_keys [:channel, :token, :user]
  defstruct [:channel, :token, :user]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.kick"
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