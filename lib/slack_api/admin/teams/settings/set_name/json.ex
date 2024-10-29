defmodule SlackAPI.Admin.Teams.Settings.SetName do
  @enforce_keys [:name, :team_id, :token]
  defstruct [:name, :team_id, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.teams.settings.setName"
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