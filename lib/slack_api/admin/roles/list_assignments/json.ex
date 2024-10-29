defmodule SlackAPI.Admin.Roles.ListAssignments do
  @enforce_keys [:token]
  defstruct [:token, :cursor, :entity_ids, :limit, :role_ids, :sort_dir]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.roles.listAssignments"
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