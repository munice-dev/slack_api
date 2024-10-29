defmodule SlackAPI.Admin.Apps.Restrict do
  @enforce_keys [:token]
  defstruct [:token, :app_id, :enterprise_id, :request_id, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.apps.restrict"
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