defmodule SlackAPI.Usergroups.Create do
  @enforce_keys [:name, :token]
  defstruct [
    :name,
    :token,
    :channels,
    :description,
    :enable_section,
    :handle,
    :include_count,
    :team_id
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "usergroups.create"
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