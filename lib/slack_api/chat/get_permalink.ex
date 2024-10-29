defmodule SlackAPI.Chat.GetPermalink do
  @enforce_keys [:channel, :message_ts, :token]
  defstruct [:channel, :message_ts, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "chat.getPermalink"
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