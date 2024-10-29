defmodule SlackAPI.Admin.Functions.Permissions.Set do
  @enforce_keys [:function_id, :token, :visibility]
  defstruct [:function_id, :token, :visibility, :user_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.functions.permissions.set"
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