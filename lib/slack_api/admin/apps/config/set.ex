defmodule SlackAPI.Admin.Apps.Config.Set do
  @enforce_keys [:app_id, :token]
  defstruct [:app_id, :token, :domain_restrictions, :workflow_auth_strategy]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.apps.config.set"
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