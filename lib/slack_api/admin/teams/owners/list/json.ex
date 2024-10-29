defmodule SlackAPI.Admin.Teams.Owners.List do
  @enforce_keys [:team_id, :token]
  defstruct [:team_id, :token, :cursor, :limit]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.teams.owners.list"
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