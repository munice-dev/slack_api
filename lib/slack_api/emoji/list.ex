defmodule SlackAPI.Emoji.List do
  @enforce_keys [:token]
  defstruct [:token, :include_categories]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "emoji.list"
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