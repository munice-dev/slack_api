defmodule SlackAPI.Users.Identity do
  @enforce_keys [:token]
  defstruct [:token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "users.identity"
      end

      def headers(_) do
        [:token]
      end

      def method(_) do
        :get
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