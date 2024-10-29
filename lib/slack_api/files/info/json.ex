defmodule SlackAPI.Files.Info do
  @enforce_keys [:file, :token]
  defstruct [:file, :token, :count, :cursor, :limit, :page]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "files.info"
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