defmodule SlackAPI.Apps.Manifest.Validate do
  @enforce_keys [:manifest, :token]
  defstruct [:manifest, :token, :app_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "apps.manifest.validate"
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