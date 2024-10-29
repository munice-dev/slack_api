defmodule SlackAPI.Usergroups.Users.List do
  @enforce_keys [:token, :usergroup]
  defstruct [:token, :usergroup, :include_disabled, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "usergroups.users.list"
      end

      def headers(_) do
        [:token]
      end

      def base_url(_) do
        "https://slack.com/api"
      end

      def method(_) do
        :get
      end
    )

    def req(data) do
      SlackReq.action(data)
    end
  end
end