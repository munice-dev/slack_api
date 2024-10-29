defmodule SlackAPI.Canvases.Edit do
  @enforce_keys [:canvas_id, :changes, :token]
  defstruct [:canvas_id, :changes, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "canvases.edit"
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