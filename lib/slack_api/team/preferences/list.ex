defmodule SlackAPI.Team.Preferences.List do
  @enforce_keys [:token]
  defstruct [:token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "team.preferences.list"
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