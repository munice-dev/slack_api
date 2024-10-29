defmodule SlackAPI.Canvases.Sections.Lookup do
  @enforce_keys [:canvas_id, :criteria, :token]
  defstruct [:canvas_id, :criteria, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "canvases.sections.lookup"
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