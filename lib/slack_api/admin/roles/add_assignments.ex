defmodule SlackAPI.Admin.Roles.AddAssignments do
  @enforce_keys [:entity_ids, :role_id, :token, :user_ids]
  defstruct [:entity_ids, :role_id, :token, :user_ids]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.roles.addAssignments"
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