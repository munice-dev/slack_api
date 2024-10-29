defmodule SlackAPI.Users.LookupByEmail do
  @enforce_keys [:email, :token]
  defstruct [:email, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "users.lookupByEmail"
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