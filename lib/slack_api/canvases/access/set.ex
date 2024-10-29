defmodule SlackAPI.Canvases.Access.Set do
  @enforce_keys [:access_level, :canvas_id, :token]
  defstruct [:access_level, :canvas_id, :token, :channel_ids, :user_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "canvases.access.set"
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