defmodule SlackAPI.Admin.Conversations.Ekm.ListOriginalConnectedChannelInfo do
  @enforce_keys [:token]
  defstruct [:token, :channel_ids, :cursor, :limit, :team_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.ekm.listOriginalConnectedChannelInfo"
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