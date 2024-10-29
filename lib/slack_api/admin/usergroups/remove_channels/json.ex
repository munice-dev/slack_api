defmodule SlackAPI.Admin.Usergroups.RemoveChannels do
  @enforce_keys [:channel_ids, :token, :usergroup_id]
  defstruct [:channel_ids, :token, :usergroup_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.usergroups.removeChannels"
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