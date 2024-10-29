defmodule SlackAPI.Team.AccessLogs do
  @enforce_keys [:token]
  defstruct [:token, :before, :count, :cursor, :limit, :page, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "team.accessLogs"
      end

      def headers(_) do
        [:token]
      end

      def method(_) do
        :get
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