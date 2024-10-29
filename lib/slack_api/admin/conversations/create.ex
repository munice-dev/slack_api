defmodule SlackAPI.Admin.Conversations.Create do
  @enforce_keys [:is_private, :name, :token]
  defstruct [:is_private, :name, :token, :description, :org_wide, :team_id]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.conversations.create"
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