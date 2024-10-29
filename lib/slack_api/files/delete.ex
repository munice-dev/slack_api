defmodule SlackAPI.Files.Delete do
  @enforce_keys [:file, :token]
  defstruct [:file, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "files.delete"
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