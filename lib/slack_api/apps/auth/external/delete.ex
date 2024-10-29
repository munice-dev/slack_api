defmodule SlackAPI.Apps.Auth.External.Delete do
  @enforce_keys [:token]
  defstruct [:token, :app_id, :external_token_id, :provider_key]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "apps.auth.external.delete"
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