defmodule SlackAPI.Functions.CompleteSuccess do
  @enforce_keys [:function_execution_id, :outputs, :token]
  defstruct [:function_execution_id, :outputs, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "functions.completeSuccess"
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