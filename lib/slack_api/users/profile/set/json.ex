defmodule SlackAPI.Users.Profile.Set do
  @enforce_keys [:token]
  defstruct [:token, :name, :profile, :user, :value]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "users.profile.set"
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