defmodule SlackAPI.Chat.PostMessage do
  @enforce_keys [:channel, :token]
  defstruct [
    :channel,
    :token,
    :as_user,
    :attachments,
    :blocks,
    :icon_emoji,
    :icon_url,
    :link_names,
    :metadata,
    :mrkdwn,
    :parse,
    :reply_broadcast,
    :text,
    :thread_ts,
    :unfurl_links,
    :unfurl_media,
    :username
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "chat.postMessage"
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