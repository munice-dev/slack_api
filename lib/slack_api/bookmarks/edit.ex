defmodule SlackAPI.Bookmarks.Edit do
  @enforce_keys [:bookmark_id, :channel_id, :token]
  defstruct [:bookmark_id, :channel_id, :token, :emoji, :link, :title]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "bookmarks.edit"
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