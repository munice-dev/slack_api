defmodule SlackAPI.Chat.DeleteScheduledMessage do
  @enforce_keys [:channel, :scheduled_message_id, :token]
  defstruct [:channel, :scheduled_message_id, :token, :as_user]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "chat.deleteScheduledMessage"
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