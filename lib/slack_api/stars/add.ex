defmodule SlackAPI.Stars.Add do
  @enforce_keys [:token]
  defstruct [:token, :channel, :file, :file_comment, :timestamp]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "stars.add"
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