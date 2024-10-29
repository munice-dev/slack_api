defmodule SlackAPI.Conversations.Open do
  @enforce_keys [:token]
  defstruct [:token, :channel, :prevent_creation, :return_im, :users]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.open"
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