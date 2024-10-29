defmodule SlackAPI.Oauth.Access do
  @enforce_keys []
  defstruct [:client_id, :client_secret, :code, :redirect_uri, :single_channel]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "oauth.access"
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