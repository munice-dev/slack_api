defmodule SlackAPI.Admin.Functions.Permissions.Lookup do
  @enforce_keys [:function_ids, :token]
  defstruct [:function_ids, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.functions.permissions.lookup"
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