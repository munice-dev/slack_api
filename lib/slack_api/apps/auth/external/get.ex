defmodule SlackAPI.Apps.Auth.External.Get do
  @enforce_keys [:external_token_id, :token]
  defstruct [:external_token_id, :token, :force_refresh]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "apps.auth.external.get"
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