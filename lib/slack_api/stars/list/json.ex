defmodule SlackAPI.Stars.List do
  @enforce_keys [:token]
  defstruct [:token, :count, :cursor, :limit, :page, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "stars.list"
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