defmodule SlackAPI.Search.All do
  @enforce_keys [:query, :token]
  defstruct [:query, :token, :count, :highlight, :page, :sort, :sort_dir, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "search.all"
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