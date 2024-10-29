defmodule SlackAPI.Admin.Apps.Approve do
  @enforce_keys [:token]
  defstruct [:token, :app_id, :enterprise_id, :request_id, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.apps.approve"
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