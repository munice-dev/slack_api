defmodule SlackAPI.Chat.Delete do
  @enforce_keys [:channel, :token, :ts]
  defstruct [:channel, :token, :ts, :as_user]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "chat.delete"
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