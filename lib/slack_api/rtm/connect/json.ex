defmodule SlackAPI.Rtm.Connect do
  @enforce_keys [:token]
  defstruct [:token, :batch_presence_aware, :presence_sub]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "rtm.connect"
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