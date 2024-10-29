defmodule SlackAPI.Apps.Datastore.Count do
  @enforce_keys [:datastore, :token]
  defstruct [:datastore, :token, :app_id, :expression, :expression_attributes, :expression_values]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "apps.datastore.count"
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