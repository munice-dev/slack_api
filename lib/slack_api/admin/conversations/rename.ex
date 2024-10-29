defmodule SlackAPI.Admin.Conversations.Rename do
  @enforce_keys [:channel_id, :name, :token]
  defstruct [:channel_id, :name, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.rename"
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