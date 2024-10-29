defmodule SlackAPI.Assistant.Threads.SetStatus do
  @enforce_keys [:channel_id, :status, :thread_ts, :token]
  defstruct [:channel_id, :status, :thread_ts, :token, :is_send_allowed]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "assistant.threads.setStatus"
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