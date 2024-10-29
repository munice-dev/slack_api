defmodule SlackAPI.Apps.Datastore.BulkGet do
  @enforce_keys [:datastore, :ids, :token]
  defstruct [:datastore, :ids, :token, :app_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "apps.datastore.bulkGet"
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