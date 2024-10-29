defmodule SlackAPI.Admin.Barriers.Update do
  @enforce_keys [
    :barrier_id,
    :barriered_from_usergroup_ids,
    :primary_usergroup_id,
    :restricted_subjects,
    :token
  ]
  defstruct [
    :barrier_id,
    :barriered_from_usergroup_ids,
    :primary_usergroup_id,
    :restricted_subjects,
    :token
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.barriers.update"
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