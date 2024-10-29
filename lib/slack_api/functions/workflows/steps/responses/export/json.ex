defmodule SlackAPI.Functions.Workflows.Steps.Responses.Export do
  @enforce_keys [:step_id, :token]
  defstruct [:step_id, :token, :workflow, :workflow_app_id, :workflow_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "functions.workflows.steps.responses.export"
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