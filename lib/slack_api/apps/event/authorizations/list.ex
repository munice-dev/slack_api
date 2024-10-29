defmodule SlackAPI.Apps.Event.Authorizations.List do
  @enforce_keys [:event_context, :token]
  defstruct [:event_context, :token, :cursor, :limit]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "apps.event.authorizations.list"
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