defmodule SlackAPI.Admin.Usergroups.AddTeams do
  @enforce_keys [:team_ids, :token, :usergroup_id]
  defstruct [:team_ids, :token, :usergroup_id, :auto_provision]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.usergroups.addTeams"
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