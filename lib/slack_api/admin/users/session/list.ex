defmodule SlackAPI.Admin.Users.Session.List do
  @enforce_keys [:token]
  defstruct [:token, :cursor, :limit, :team_id, :user_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.users.session.list"
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