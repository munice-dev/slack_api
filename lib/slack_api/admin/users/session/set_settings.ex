defmodule SlackAPI.Admin.Users.Session.SetSettings do
  @enforce_keys [:token, :user_ids]
  defstruct [:token, :user_ids, :desktop_app_browser_quit, :duration]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.users.session.setSettings"
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