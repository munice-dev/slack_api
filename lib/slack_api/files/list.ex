defmodule SlackAPI.Files.List do
  @enforce_keys [:token]
  defstruct [
    :token,
    :channel,
    :count,
    :page,
    :show_files_hidden_by_limit,
    :team_id,
    :ts_from,
    :ts_to,
    :types,
    :user
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "files.list"
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