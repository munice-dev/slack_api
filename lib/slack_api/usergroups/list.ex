defmodule SlackAPI.Usergroups.List do
  @enforce_keys [:token]
  defstruct [:token, :include_count, :include_disabled, :include_users, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "usergroups.list"
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