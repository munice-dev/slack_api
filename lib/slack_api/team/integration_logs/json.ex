defmodule SlackAPI.Team.IntegrationLogs do
  @enforce_keys [:token]
  defstruct [:token, :app_id, :change_type, :count, :page, :service_id, :team_id, :user]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "team.integrationLogs"
      end

      def headers(_) do
        [:token]
      end

      def base_url(_) do
        "https://slack.com/api"
      end

      def method(_) do
        :get
      end
    )

    def req(data) do
      SlackReq.action(data)
    end
  end
end