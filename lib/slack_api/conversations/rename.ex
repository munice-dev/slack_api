defmodule SlackAPI.Conversations.Rename do
  @enforce_keys [:channel, :name, :token]
  defstruct [:channel, :name, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.rename"
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