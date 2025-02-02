defmodule SlackAPI.Admin.Workflows.Triggers.Types.Permissions.Set do
  @enforce_keys [:id, :token, :visibility]
  defstruct [:id, :token, :visibility, :user_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.workflows.triggers.types.permissions.set"
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