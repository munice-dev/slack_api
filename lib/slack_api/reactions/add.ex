defmodule SlackAPI.Reactions.Add do
  @enforce_keys [:channel, :name, :timestamp, :token]
  defstruct [:channel, :name, :timestamp, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "reactions.add"
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