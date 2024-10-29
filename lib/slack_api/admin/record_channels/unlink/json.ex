defmodule SlackAPI.Admin.RecordChannels.Unlink do
  @enforce_keys [:channel, :new_name, :token]
  defstruct [:channel, :new_name, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.recordChannels.unlink"
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