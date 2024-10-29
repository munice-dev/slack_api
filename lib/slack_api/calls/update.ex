defmodule SlackAPI.Calls.Update do
  @enforce_keys [:id, :token]
  defstruct [:id, :token, :desktop_app_join_url, :join_url, :title]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "calls.update"
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