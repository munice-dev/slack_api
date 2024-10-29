defmodule SlackAPI.Admin.Workflows.Unpublish do
  @enforce_keys [:token, :workflow_ids]
  defstruct [:token, :workflow_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.workflows.unpublish"
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