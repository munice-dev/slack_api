defmodule SlackAPI.Workflows.Triggers.Permissions.List do
  @enforce_keys [:token, :trigger_id]
  defstruct [:token, :trigger_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "workflows.triggers.permissions.list"
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