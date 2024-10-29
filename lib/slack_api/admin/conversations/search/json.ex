defmodule SlackAPI.Admin.Conversations.Search do
  @enforce_keys [:token]
  defstruct [
    :token,
    :connected_team_ids,
    :cursor,
    :limit,
    :query,
    :search_channel_types,
    :sort,
    :sort_dir,
    :team_ids,
    :total_count_only
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.search"
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