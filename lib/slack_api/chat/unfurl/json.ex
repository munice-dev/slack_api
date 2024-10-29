defmodule SlackAPI.Chat.Unfurl do
  @enforce_keys [:channel, :token, :ts, :unfurls]
  defstruct [
    :channel,
    :token,
    :ts,
    :unfurls,
    :source,
    :unfurl_id,
    :user_auth_blocks,
    :user_auth_message,
    :user_auth_required,
    :user_auth_url
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "chat.unfurl"
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