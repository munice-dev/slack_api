defmodule SlackAPI.Chat.Update do
  @enforce_keys [:channel, :token, :ts]
  defstruct [
    :channel,
    :token,
    :ts,
    :as_user,
    :attachments,
    :blocks,
    :file_ids,
    :link_names,
    :metadata,
    :parse,
    :reply_broadcast,
    :text
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "chat.update"
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