defmodule SlackAPI.Admin.Apps.ClearResolution do
  @enforce_keys [:app_id, :token]
  defstruct [:app_id, :token, :enterprise_id, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.apps.clearResolution"
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