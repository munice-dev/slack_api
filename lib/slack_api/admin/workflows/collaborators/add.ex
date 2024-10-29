defmodule SlackAPI.Admin.Workflows.Collaborators.Add do
  @enforce_keys [:collaborator_ids, :token, :workflow_ids]
  defstruct [:collaborator_ids, :token, :workflow_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.workflows.collaborators.add"
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