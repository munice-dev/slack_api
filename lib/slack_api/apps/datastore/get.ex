defmodule SlackAPI.Apps.Datastore.Get do
  @enforce_keys [:datastore, :id, :token]
  defstruct [:datastore, :id, :token, :app_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "apps.datastore.get"
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