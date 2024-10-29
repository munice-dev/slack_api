defmodule SlackAPI.Admin.Barriers.Create do
  @enforce_keys [
    :barriered_from_usergroup_ids,
    :primary_usergroup_id,
    :restricted_subjects,
    :token
  ]
  defstruct [:barriered_from_usergroup_ids, :primary_usergroup_id, :restricted_subjects, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.barriers.create"
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