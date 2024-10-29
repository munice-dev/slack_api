defmodule SlackAPI.Files.GetUploadURLExternal do
  @enforce_keys [:filename, :length, :token]
  defstruct [:filename, :length, :token, :alt_txt, :snippet_type]

  defimpl(SlackAPI) do
    (
      def url(_) do
        "files.getUploadURLExternal"
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