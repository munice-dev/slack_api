defmodule SlackAPI.Admin.Users.Session.ResetBulk do
  @enforce_keys [:token, :user_ids]
  defstruct [:token, :user_ids, :mobile_only, :web_only]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.users.session.resetBulk"
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