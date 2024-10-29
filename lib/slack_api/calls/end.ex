defmodule SlackAPI.Calls.End do
  @enforce_keys [:id, :token]
  defstruct [:id, :token, :duration]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "calls.end"
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