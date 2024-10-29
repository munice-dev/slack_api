defmodule SlackAPI.Auth.Teams.List do
  @enforce_keys [:token]
  defstruct [:token, :cursor, :include_icon, :limit]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "auth.teams.list"
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