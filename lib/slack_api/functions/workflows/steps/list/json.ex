defmodule SlackAPI.Functions.Workflows.Steps.List do
  @enforce_keys [:function_id, :token]
  defstruct [:function_id, :token, :workflow, :workflow_app_id, :workflow_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "functions.workflows.steps.list"
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