defmodule SlackAPI.Admin.Analytics.GetFile do
  @enforce_keys [:token, :type]
  defstruct [:token, :type, :date, :metadata_only]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.analytics.getFile"
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