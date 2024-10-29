defmodule SlackAPI.Conversations.Leave do
  @enforce_keys [:channel, :token]
  defstruct [:channel, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.leave"
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