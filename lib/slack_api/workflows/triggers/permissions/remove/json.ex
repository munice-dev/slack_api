defmodule SlackAPI.Workflows.Triggers.Permissions.Remove do
  @enforce_keys [:token, :trigger_id]
  defstruct [:token, :trigger_id, :channel_ids, :org_ids, :team_ids, :user_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "workflows.triggers.permissions.remove"
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