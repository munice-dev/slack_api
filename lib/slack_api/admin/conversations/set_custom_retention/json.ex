defmodule SlackAPI.Admin.Conversations.SetCustomRetention do
  @enforce_keys [:channel_id, :duration_days, :token]
  defstruct [:channel_id, :duration_days, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.setCustomRetention"
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