defmodule SlackAPI.Workflows.StepCompleted do
  @enforce_keys [:token, :workflow_step_execute_id]
  defstruct [:token, :workflow_step_execute_id, :outputs]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "workflows.stepCompleted"
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