defmodule SlackAPI.Admin.Users.Session.GetSettings do
  @enforce_keys [:token, :user_ids]
  defstruct [:token, :user_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.users.session.getSettings"
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