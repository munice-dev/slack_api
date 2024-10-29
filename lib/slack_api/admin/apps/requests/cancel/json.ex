defmodule SlackAPI.Admin.Apps.Requests.Cancel do
  @enforce_keys [:request_id, :token]
  defstruct [:request_id, :token, :enterprise_id, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.apps.requests.cancel"
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