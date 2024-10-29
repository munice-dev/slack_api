defmodule SlackAPI.Admin.Users.Assign do
  @enforce_keys [:team_id, :token, :user_id]
  defstruct [:team_id, :token, :user_id, :channel_ids, :is_restricted, :is_ultra_restricted]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.users.assign"
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