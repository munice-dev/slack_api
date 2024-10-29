defmodule SlackAPI.Admin.Teams.Settings.SetDefaultChannels do
  @enforce_keys [:channel_ids, :team_id, :token]
  defstruct [:channel_ids, :team_id, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.teams.settings.setDefaultChannels"
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