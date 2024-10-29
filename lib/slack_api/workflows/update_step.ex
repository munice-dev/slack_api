defmodule SlackAPI.Workflows.UpdateStep do
  @enforce_keys [:token, :workflow_step_edit_id]
  defstruct [:token, :workflow_step_edit_id, :inputs, :outputs, :step_image_url, :step_name]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "workflows.updateStep"
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