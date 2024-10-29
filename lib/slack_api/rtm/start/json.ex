defmodule SlackAPI.Rtm.Start do
  @enforce_keys [:token]
  defstruct [
    :token,
    :batch_presence_aware,
    :include_locale,
    :mpim_aware,
    :no_latest,
    :no_unreads,
    :presence_sub,
    :simple_latest
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "rtm.start"
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