defmodule SlackAPI.Admin.Functions.List do
  @enforce_keys [:app_ids, :token]
  defstruct [:app_ids, :token, :cursor, :limit, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.functions.list"
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