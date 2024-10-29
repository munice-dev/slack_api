defmodule SlackAPI.Users.SetPresence do
  @enforce_keys [:presence, :token]
  defstruct [:presence, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "users.setPresence"
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