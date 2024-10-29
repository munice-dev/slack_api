defmodule SlackAPI.Chat.ScheduledMessages.List do
  @enforce_keys [:token]
  defstruct [:token, :channel, :cursor, :latest, :limit, :oldest, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "chat.scheduledMessages.list"
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