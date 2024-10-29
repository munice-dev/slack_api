defmodule SlackAPI.Stars.Remove do
  @enforce_keys [:token]
  defstruct [:token, :channel, :file, :file_comment, :timestamp]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "stars.remove"
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