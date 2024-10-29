defmodule SlackAPI.Search.Files do
  @enforce_keys [:query, :token]
  defstruct [:query, :token, :count, :highlight, :page, :sort, :sort_dir, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "search.files"
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