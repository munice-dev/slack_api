defmodule SlackAPI.Users.Info do
  @enforce_keys [:token, :user]
  defstruct [:token, :user, :include_locale]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "users.info"
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