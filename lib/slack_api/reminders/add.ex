defmodule SlackAPI.Reminders.Add do
  @enforce_keys [:text, :time, :token]
  defstruct [:text, :time, :token, :recurrence, :team_id, :user]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "reminders.add"
      end

      def headers(_) do
        [:token]
      end

      def method(_) do
        :post
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