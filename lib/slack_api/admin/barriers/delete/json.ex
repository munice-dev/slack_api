defmodule SlackAPI.Admin.Barriers.Delete do
  @enforce_keys [:barrier_id, :token]
  defstruct [:barrier_id, :token]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.barriers.delete"
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