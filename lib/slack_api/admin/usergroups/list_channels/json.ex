defmodule SlackAPI.Admin.Usergroups.ListChannels do
  @enforce_keys [:token, :usergroup_id]
  defstruct [:token, :usergroup_id, :include_num_members, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.usergroups.listChannels"
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