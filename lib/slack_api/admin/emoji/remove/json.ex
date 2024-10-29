defmodule SlackAPI.Admin.Emoji.Remove do
  @enforce_keys [:name, :token]
  defstruct [:name, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.emoji.remove"
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