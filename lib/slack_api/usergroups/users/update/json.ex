defmodule SlackAPI.Usergroups.Users.Update do
  @enforce_keys [:token, :usergroup, :users]
  defstruct [:token, :usergroup, :users, :include_count, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "usergroups.users.update"
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