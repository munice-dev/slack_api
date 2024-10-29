defmodule SlackAPI.Apps.Manifest.Create do
  @enforce_keys [:manifest, :token]
  defstruct [:manifest, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "apps.manifest.create"
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