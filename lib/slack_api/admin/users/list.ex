defmodule SlackAPI.Admin.Users.List do
  @enforce_keys [:token]
  defstruct [:token, :cursor, :include_deactivated_user_workspaces, :is_active, :limit, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.users.list"
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