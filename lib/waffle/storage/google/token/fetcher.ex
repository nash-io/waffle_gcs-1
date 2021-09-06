defmodule Waffle.Storage.Google.Token.Fetcher do
  @callback get_token(Waffle.Types.meta()) :: binary()
end
