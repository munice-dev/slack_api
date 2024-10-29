defmodule SlackAPI.Dialog.Open do
  @enforce_keys [:dialog, :token, :trigger_id]
  defstruct [:dialog, :token, :trigger_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "dialog.open"
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