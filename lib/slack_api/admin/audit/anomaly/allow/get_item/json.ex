defmodule SlackAPI.Admin.Audit.Anomaly.Allow.GetItem do
  @enforce_keys []
  defstruct []

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.audit.anomaly.allow.getItem"
      end

      def headers(_) do
        []
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