defmodule SlackAPI.Functions.Distributions.Permissions.Remove do
  @enforce_keys [:token]
  defstruct [:token, :function_app_id, :function_callback_id, :function_id, :user_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "functions.distributions.permissions.remove"
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