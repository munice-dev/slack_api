defmodule SlackAPI.Users.GetPresence do
  @enforce_keys [:token]
  defstruct [:token, :user]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "users.getPresence"
      end

      def headers(_) do
        [:token]
      end

      def base_url(_) do
        "https://slack.com/api"
      end

      def method(_) do
        :get
      end
    )

    def req(data) do
      SlackReq.action(data)
    end
  end
end