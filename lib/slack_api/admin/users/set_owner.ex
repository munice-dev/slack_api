defmodule SlackAPI.Admin.Users.SetOwner do
  @enforce_keys [:team_id, :token, :user_id]
  defstruct [:team_id, :token, :user_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.users.setOwner"
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