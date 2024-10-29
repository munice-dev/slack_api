defmodule SlackAPI.Migration.Exchange do
  @enforce_keys [:token, :users]
  defstruct [:token, :users, :team_id, :to_old]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "migration.exchange"
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