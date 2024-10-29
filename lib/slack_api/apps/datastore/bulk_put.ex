defmodule SlackAPI.Apps.Datastore.BulkPut do
  @enforce_keys [:datastore, :items, :token]
  defstruct [:datastore, :items, :token, :app_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "apps.datastore.bulkPut"
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