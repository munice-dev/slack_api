defmodule SlackAPI.Team.Info do
  @enforce_keys [:token]
  defstruct [:token, :domain, :team]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "team.info"
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