defmodule SlackAPI.Admin.Teams.Settings.SetIcon do
  @enforce_keys [:image_url, :team_id, :token]
  defstruct [:image_url, :team_id, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.teams.settings.setIcon"
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