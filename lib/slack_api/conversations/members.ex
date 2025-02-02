defmodule SlackAPI.Conversations.Members do
  @enforce_keys [:channel, :token]
  defstruct [:channel, :token, :cursor, :limit]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.members"
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