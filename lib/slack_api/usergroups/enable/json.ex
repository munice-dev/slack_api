defmodule SlackAPI.Usergroups.Enable do
  @enforce_keys [:token, :usergroup]
  defstruct [:token, :usergroup, :include_count, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "usergroups.enable"
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