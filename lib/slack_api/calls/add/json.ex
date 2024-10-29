defmodule SlackAPI.Calls.Add do
  @enforce_keys [:external_unique_id, :join_url, :token]
  defstruct [
    :external_unique_id,
    :join_url,
    :token,
    :created_by,
    :date_start,
    :desktop_app_join_url,
    :external_display_id,
    :title,
    :users
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "calls.add"
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