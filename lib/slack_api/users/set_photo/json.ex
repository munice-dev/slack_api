defmodule SlackAPI.Users.SetPhoto do
  @enforce_keys [:token]
  defstruct [:token, :crop_w, :crop_x, :crop_y, :image]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "users.setPhoto"
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