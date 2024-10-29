defmodule SlackAPI.Bookmarks.Add do
  @enforce_keys [:channel_id, :title, :token, :type]
  defstruct [:channel_id, :title, :token, :type, :emoji, :entity_id, :link, :parent_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "bookmarks.add"
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