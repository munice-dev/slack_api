defmodule SlackAPI.Admin.Emoji.Add do
  @enforce_keys [:name, :token, :url]
  defstruct [:name, :token, :url]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.emoji.add"
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