defmodule SlackAPI.Views.Push do
  @enforce_keys [:token, :view]
  defstruct [:token, :view, :interactivity_pointer, :trigger_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "views.push"
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