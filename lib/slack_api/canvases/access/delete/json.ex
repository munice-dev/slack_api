defmodule SlackAPI.Canvases.Access.Delete do
  @enforce_keys [:canvas_id, :token]
  defstruct [:canvas_id, :token, :channel_ids, :user_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "canvases.access.delete"
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