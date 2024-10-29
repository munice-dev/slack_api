defmodule SlackAPI.Apps.Datastore.Query do
  @enforce_keys [:datastore, :token]
  defstruct [
    :datastore,
    :token,
    :app_id,
    :cursor,
    :expression,
    :expression_attributes,
    :expression_values,
    :limit
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "apps.datastore.query"
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