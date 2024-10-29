defmodule SlackAPI.Reminders.Delete do
  @enforce_keys [:reminder, :token]
  defstruct [:reminder, :token, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "reminders.delete"
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