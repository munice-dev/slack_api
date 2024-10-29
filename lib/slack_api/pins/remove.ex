defmodule SlackAPI.Pins.Remove do
  @enforce_keys [:channel, :token]
  defstruct [:channel, :token, :timestamp]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "pins.remove"
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