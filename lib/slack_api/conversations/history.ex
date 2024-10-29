defmodule SlackAPI.Conversations.History do
  @enforce_keys [:channel, :token]
  defstruct [
    :channel,
    :token,
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
        "conversations.history"
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