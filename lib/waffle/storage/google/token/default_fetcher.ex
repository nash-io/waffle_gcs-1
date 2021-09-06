defmodule Waffle.Storage.Google.Token.DefaultFetcher do
  @behaviour Waffle.Storage.Google.Token.Fetcher

  @full_control_scope "https://www.googleapis.com/auth/devstorage.full_control"

  @impl Waffle.Storage.Google.Token.Fetcher
  def get_token(_scope) do
    {:ok, token} = Goth.Token.for_scope(@full_control_scope)
    token.token
  end
end
