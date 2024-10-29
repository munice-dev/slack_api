defmodule SlackAPI.Conversations.SetPurpose do
  @enforce_keys [:channel, :purpose, :token]
  defstruct [:channel, :purpose, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.setPurpose"
      end

      def headers(_) do
        [:token]
      end

      def base_url(_) do
        "https://slack.com/api"
      end

      def method(_) do
        :post
      end
    )

    def req(data) do
      SlackReq.action(data)
    end
  end
end