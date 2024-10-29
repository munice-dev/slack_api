defmodule SlackAPI.Chat.PostEphemeral do
  @enforce_keys [:channel, :token, :user]
  defstruct [
    :channel,
    :token,
    :user,
    :as_user,
    :attachments,
    :blocks,
    :icon_emoji,
    :icon_url,
    :link_names,
    :parse,
    :text,
    :thread_ts,
    :username
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "chat.postEphemeral"
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