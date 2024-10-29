defmodule SlackAPI.Conversations.AcceptSharedInvite do
  @enforce_keys [:channel_name, :token]
  defstruct [
    :channel_name,
    :token,
    :channel_id,
    :free_trial_accepted,
    :invite_id,
    :is_private,
    :team_id
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "conversations.acceptSharedInvite"
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