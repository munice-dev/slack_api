defmodule SlackAPI.Dnd.EndSnooze do
  @enforce_keys [:token]
  defstruct [:token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "dnd.endSnooze"
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