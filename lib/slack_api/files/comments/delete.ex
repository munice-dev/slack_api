defmodule SlackAPI.Files.Comments.Delete do
  @enforce_keys [:file, :id, :token]
  defstruct [:file, :id, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "files.comments.delete"
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