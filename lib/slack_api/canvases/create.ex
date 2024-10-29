defmodule SlackAPI.Canvases.Create do
  @enforce_keys [:token]
  defstruct [:token, :document_content, :title]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "canvases.create"
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