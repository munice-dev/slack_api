defmodule SlackAPI.Admin.Auth.Policy.GetEntities do
  @enforce_keys [:policy_name, :token]
  defstruct [:policy_name, :token, :cursor, :entity_type, :limit]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.auth.policy.getEntities"
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