defmodule SlackAPI.Admin.InviteRequests.Approve do
  @enforce_keys [:invite_request_id, :token]
  defstruct [:invite_request_id, :token, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.inviteRequests.approve"
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