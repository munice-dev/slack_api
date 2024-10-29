defmodule SlackAPI.Conversations.Create do
  @enforce_keys [:name, :token]
  defstruct [:name, :token, :is_private, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.create"
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