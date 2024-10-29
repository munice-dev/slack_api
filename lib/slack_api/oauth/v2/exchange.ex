defmodule SlackAPI.Oauth.V2.Exchange do
  @enforce_keys [:client_id, :client_secret, :token]
  defstruct [:client_id, :client_secret, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "oauth.v2.exchange"
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