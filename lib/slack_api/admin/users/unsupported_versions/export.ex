defmodule SlackAPI.Admin.Users.UnsupportedVersions.Export do
  @enforce_keys [:token]
  defstruct [:token, :date_end_of_support, :date_sessions_started]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.users.unsupportedVersions.export"
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