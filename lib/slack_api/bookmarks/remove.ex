defmodule SlackAPI.Bookmarks.Remove do
  @enforce_keys [:bookmark_id, :channel_id, :token]
  defstruct [:bookmark_id, :channel_id, :token, :quip_section_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "bookmarks.remove"
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