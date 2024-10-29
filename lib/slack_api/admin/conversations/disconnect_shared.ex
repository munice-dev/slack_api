defmodule SlackAPI.Admin.Conversations.DisconnectShared do
  @enforce_keys [:channel_id, :token]
  defstruct [:channel_id, :token, :leaving_team_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.disconnectShared"
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