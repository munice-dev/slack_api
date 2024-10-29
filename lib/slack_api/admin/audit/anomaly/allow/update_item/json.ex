defmodule SlackAPI.Admin.Audit.Anomaly.Allow.UpdateItem do
  @enforce_keys []
  defstruct [:trusted_asns, :trusted_cidr]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.audit.anomaly.allow.updateItem"
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