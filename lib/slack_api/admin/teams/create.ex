defmodule SlackAPI.Admin.Teams.Create do
  @enforce_keys [:team_domain, :team_name, :token]
  defstruct [:team_domain, :team_name, :token, :team_description, :team_discoverability]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.teams.create"
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