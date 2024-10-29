defmodule SlackAPI.Usergroups.Update do
  @enforce_keys [:token, :usergroup]
  defstruct [
    :token,
    :usergroup,
    :channels,
    :description,
    :enable_section,
    :handle,
    :include_count,
    :name,
    :team_id
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "usergroups.update"
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