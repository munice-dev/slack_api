defmodule SlackAPI.Apps.Activities.List do
  @enforce_keys [:app_id, :token]
  defstruct [
    :app_id,
    :token,
    :component_id,
    :component_type,
    :cursor,
    :limit,
    :log_event_type,
    :max_date_created,
    :min_date_created,
    :min_log_level,
    :sort_direction,
    :source,
    :team_id,
    :trace_id
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "apps.activities.list"
      end

      def headers(_) do
        [:token]
      end

      def base_url(_) do
        "https://slack.com/api"
      end

      def method(_) do
        :get
      end
    )

    def req(data) do
      SlackReq.action(data)
    end
  end
end