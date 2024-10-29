defmodule SlackAPI.Team.Profile.Get do
  @enforce_keys [:token]
  defstruct [:token, :visibility]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "team.profile.get"
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