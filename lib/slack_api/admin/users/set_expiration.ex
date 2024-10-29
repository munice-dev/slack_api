defmodule SlackAPI.Admin.Users.SetExpiration do
  @enforce_keys [:expiration_ts, :token, :user_id]
  defstruct [:expiration_ts, :token, :user_id, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.users.setExpiration"
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