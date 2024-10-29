defmodule SlackAPI.Team.ExternalTeams.Disconnect do
  @enforce_keys [:target_team, :token]
  defstruct [:target_team, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "team.externalTeams.disconnect"
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