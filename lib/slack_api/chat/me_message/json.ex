defmodule SlackAPI.Chat.MeMessage do
  @enforce_keys [:channel, :text, :token]
  defstruct [:channel, :text, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "chat.meMessage"
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