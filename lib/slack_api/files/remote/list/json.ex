defmodule SlackAPI.Files.Remote.List do
  @enforce_keys [:token]
  defstruct [:token, :channel, :cursor, :limit, :ts_from, :ts_to]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "files.remote.list"
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