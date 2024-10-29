defmodule SlackAPI.Admin.InviteRequests.Approved.List do
  @enforce_keys [:token]
  defstruct [:token, :cursor, :limit, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.inviteRequests.approved.list"
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