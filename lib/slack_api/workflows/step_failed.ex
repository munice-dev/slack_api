defmodule SlackAPI.Workflows.StepFailed do
  @enforce_keys [:error, :token, :workflow_step_execute_id]
  defstruct [:error, :token, :workflow_step_execute_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "workflows.stepFailed"
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