defmodule SlackAPI.Apps.Manifest.Update do
  @enforce_keys [:app_id, :manifest, :token]
  defstruct [:app_id, :manifest, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "apps.manifest.update"
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