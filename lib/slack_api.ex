defprotocol SlackAPI do
  @type t :: struct()

  @spec base_url(t) :: String.t()
  def base_url(s)

  @spec url(t) :: String.t()
  def url(s)

  @spec method(t) :: :post | :get
  def method(s)

  @spec headers(t) :: [:token]
  def headers(s)

  @spec req(t) :: term
  def req(s)
end
