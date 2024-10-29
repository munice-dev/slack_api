defmodule SlackAPI.Admin.Usergroups.AddChannels do
  @enforce_keys [:channel_ids, :token, :usergroup_id]
  defstruct [:channel_ids, :token, :usergroup_id, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.usergroups.addChannels"
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