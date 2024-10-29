defmodule SlackAPI.Admin.Teams.Settings.SetDescription do
  @enforce_keys [:description, :team_id, :token]
  defstruct [:description, :team_id, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.teams.settings.setDescription"
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