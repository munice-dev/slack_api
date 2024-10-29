defmodule SlackAPI.Assistant.Threads.SetSuggestedPrompts do
  @enforce_keys [:channel_id, :prompts, :thread_ts, :token]
  defstruct [:channel_id, :prompts, :thread_ts, :token, :title]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "assistant.threads.setSuggestedPrompts"
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