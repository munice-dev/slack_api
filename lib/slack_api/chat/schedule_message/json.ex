defmodule SlackAPI.Chat.ScheduleMessage do
  @enforce_keys [:channel, :post_at, :token]
  defstruct [
    :channel,
    :post_at,
    :token,
    :as_user,
    :attachments,
    :blocks,
    :link_names,
    :metadata,
    :parse,
    :reply_broadcast,
    :text,
    :thread_ts,
    :unfurl_links,
    :unfurl_media
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "chat.scheduleMessage"
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