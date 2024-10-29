defmodule SlackAPI.Conversations.RequestSharedInvite.List do
  @enforce_keys [:token]
  defstruct [
    :token,
    :cursor,
    :include_approved,
    :include_denied,
    :include_expired,
    :invite_ids,
    :limit,
    :user_id
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.requestSharedInvite.list"
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