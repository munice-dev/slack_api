defmodule SlackAPI.Admin.Emoji.Rename do
  @enforce_keys [:name, :new_name, :token]
  defstruct [:name, :new_name, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.emoji.rename"
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