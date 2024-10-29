defmodule SlackAPI.Assistant.Threads.SetTitle do
  @enforce_keys [:channel_id, :thread_ts, :title, :token]
  defstruct [:channel_id, :thread_ts, :title, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "assistant.threads.setTitle"
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