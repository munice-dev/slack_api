defmodule SlackAPI.Admin.Workflows.Permissions.Lookup do
  @enforce_keys [:token, :workflow_ids]
  defstruct [:token, :workflow_ids, :max_workflow_triggers]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.workflows.permissions.lookup"
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