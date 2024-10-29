defmodule SlackAPI.Calls.Participants.Add do
  @enforce_keys [:id, :token, :users]
  defstruct [:id, :token, :users]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "calls.participants.add"
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