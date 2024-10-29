defmodule SlackAPI.Apps.Manifest.Export do
  @enforce_keys [:app_id, :token]
  defstruct [:app_id, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "apps.manifest.export"
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