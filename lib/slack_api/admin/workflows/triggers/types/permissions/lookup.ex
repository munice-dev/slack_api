defmodule SlackAPI.Admin.Workflows.Triggers.Types.Permissions.Lookup do
  @enforce_keys [:token, :trigger_type_ids]
  defstruct [:token, :trigger_type_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.workflows.triggers.types.permissions.lookup"
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