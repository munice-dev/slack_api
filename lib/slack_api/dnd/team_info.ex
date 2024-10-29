defmodule SlackAPI.Dnd.TeamInfo do
  @enforce_keys [:token, :users]
  defstruct [:token, :users, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "dnd.teamInfo"
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