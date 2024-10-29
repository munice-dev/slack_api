defmodule SlackAPI.Canvases.Delete do
  @enforce_keys [:canvas_id, :token]
  defstruct [:canvas_id, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "canvases.delete"
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