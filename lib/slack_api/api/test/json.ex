defmodule SlackAPI.Api.Test do
  @enforce_keys []
  defstruct [:error]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "api.test"
      end

      def headers(_) do
        []
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