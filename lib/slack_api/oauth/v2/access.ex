defmodule SlackAPI.Oauth.V2.Access do
  @enforce_keys []
  defstruct [:client_id, :client_secret, :code, :grant_type, :redirect_uri, :refresh_token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "oauth.v2.access"
      end

      def headers(_) do
        []
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