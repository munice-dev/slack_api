defmodule SlackAPI.Admin.Users.Session.Invalidate do
  @enforce_keys [:session_id, :token]
  defstruct [:session_id, :token, :team_id, :user_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.users.session.invalidate"
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