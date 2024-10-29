defmodule SlackAPI.Admin.Conversations.RemoveCustomRetention do
  @enforce_keys [:channel_id, :token]
  defstruct [:channel_id, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.removeCustomRetention"
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