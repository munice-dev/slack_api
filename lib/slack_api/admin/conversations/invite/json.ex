defmodule SlackAPI.Admin.Conversations.Invite do
  @enforce_keys [:channel_id, :token, :user_ids]
  defstruct [:channel_id, :token, :user_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.invite"
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