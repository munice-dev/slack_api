defmodule SlackAPI.Team.ExternalTeams.List do
  @enforce_keys [:token]
  defstruct [
    :token,
    :connection_status_filter,
    :cursor,
    :limit,
    :slack_connect_pref_filter,
    :sort_direction,
    :sort_field,
    :workspace_filter
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "team.externalTeams.list"
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