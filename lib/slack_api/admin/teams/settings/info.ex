defmodule SlackAPI.Admin.Teams.Settings.Info do
  @enforce_keys [:team_id, :token]
  defstruct [:team_id, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.teams.settings.info"
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