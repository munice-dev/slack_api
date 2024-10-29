defmodule SlackAPI.Dnd.SetSnooze do
  @enforce_keys [:num_minutes, :token]
  defstruct [:num_minutes, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "dnd.setSnooze"
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