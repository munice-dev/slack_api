defmodule SlackAPI.Admin.Workflows.Search do
  @enforce_keys [:token]
  defstruct [
    :token,
    :app_id,
    :collaborator_ids,
    :cursor,
    :is_sales_elevate,
    :limit,
    :no_collaborators,
    :num_trigger_ids,
    :query,
    :sort,
    :sort_dir,
    :source,
    :trigger_type_id
  ]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "admin.workflows.search"
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