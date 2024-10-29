defmodule SlackAPI.Admin.Emoji.AddAlias do
  @enforce_keys [:alias_for, :name, :token]
  defstruct [:alias_for, :name, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.emoji.addAlias"
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