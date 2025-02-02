defmodule SlackAPI.Apps.Datastore.Put do
  @enforce_keys [:datastore, :item, :token]
  defstruct [:datastore, :item, :token, :app_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "apps.datastore.put"
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