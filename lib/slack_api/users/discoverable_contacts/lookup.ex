defmodule SlackAPI.Users.DiscoverableContacts.Lookup do
  @enforce_keys [:email, :token]
  defstruct [:email, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "users.discoverableContacts.lookup"
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