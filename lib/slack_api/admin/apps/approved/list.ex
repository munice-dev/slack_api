defmodule SlackAPI.Admin.Apps.Approved.List do
  @enforce_keys [:token]
  defstruct [:token, :certified, :cursor, :enterprise_id, :limit, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.apps.approved.list"
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