defmodule SlackAPI.Admin.Apps.Uninstall do
  @enforce_keys [:app_id, :token]
  defstruct [:app_id, :token, :enterprise_id, :team_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.apps.uninstall"
      end

      def headers(_) do
        [:token]
      end

      def base_url(_) do
        "https://slack.com/api"
      end

      def method(_) do
        :post
      end
    )

    def req(data) do
      SlackReq.action(data)
    end
  end
end