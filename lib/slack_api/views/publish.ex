defmodule SlackAPI.Views.Publish do
  @enforce_keys [:token, :user_id, :view]
  defstruct [:token, :user_id, :view, :hash]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "views.publish"
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