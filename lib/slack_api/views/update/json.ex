defmodule SlackAPI.Views.Update do
  @enforce_keys [:token, :view]
  defstruct [:token, :view, :external_id, :hash, :view_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "views.update"
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