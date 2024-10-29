defmodule SlackAPI.Bots.Info do
  @enforce_keys [:token]
  defstruct [:token, :bot, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "bots.info"
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