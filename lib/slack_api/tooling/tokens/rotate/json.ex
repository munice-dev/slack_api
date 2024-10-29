defmodule SlackAPI.Tooling.Tokens.Rotate do
  @enforce_keys [:refresh_token]
  defstruct [:refresh_token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "tooling.tokens.rotate"
      end

      def headers(_) do
        []
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