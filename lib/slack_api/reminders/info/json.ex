defmodule SlackAPI.Reminders.Info do
  @enforce_keys [:reminder, :token]
  defstruct [:reminder, :token, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "reminders.info"
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