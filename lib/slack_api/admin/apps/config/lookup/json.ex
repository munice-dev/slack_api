defmodule SlackAPI.Admin.Apps.Config.Lookup do
  @enforce_keys [:app_ids, :token]
  defstruct [:app_ids, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.apps.config.lookup"
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