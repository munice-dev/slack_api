defmodule SlackAPI.Admin.Users.Invite do
  @enforce_keys [:channel_ids, :email, :team_id, :token]
  defstruct [
    :channel_ids,
    :email,
    :team_id,
    :token,
    :custom_message,
    :email_password_policy_enabled,
    :guest_expiration_ts,
    :is_restricted,
    :is_ultra_restricted,
    :real_name,
    :resend
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.users.invite"
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