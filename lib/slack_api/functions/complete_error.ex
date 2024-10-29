defmodule SlackAPI.Functions.CompleteError do
  @enforce_keys [:error, :function_execution_id, :token]
  defstruct [:error, :function_execution_id, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "functions.completeError"
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