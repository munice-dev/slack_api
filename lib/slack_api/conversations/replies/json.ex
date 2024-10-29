defmodule SlackAPI.Conversations.Replies do
  @enforce_keys [:channel, :token, :ts]
  defstruct [
    :channel,
    :token,
    :ts,
    :cursor,
    :include_all_metadata,
    :inclusive,
    :latest,
    :limit,
    :oldest
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.replies"
      end

      def headers(_) do
        [:token]
      end

      def base_url(_) do
        "https://slack.com/api"
      end

      def method(_) do
        :get
      end
    )

    def req(data) do
      SlackReq.action(data)
    end
  end
end