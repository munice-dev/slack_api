defmodule SlackAPI.Admin.Auth.Policy.RemoveEntities do
  @enforce_keys [:entity_ids, :entity_type, :policy_name, :token]
  defstruct [:entity_ids, :entity_type, :policy_name, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.auth.policy.removeEntities"
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