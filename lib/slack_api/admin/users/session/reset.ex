defmodule SlackAPI.Admin.Users.Session.Reset do
  @enforce_keys [:token, :user_id]
  defstruct [:token, :user_id, :mobile_only, :web_only]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.users.session.reset"
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