defmodule SlackAPI.Files.Remote.Info do
  @enforce_keys [:token]
  defstruct [:token, :external_id, :file]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "files.remote.info"
      end

      def headers(_) do
        [:token]
      end

      def method(_) do
        :get
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