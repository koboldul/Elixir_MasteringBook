defmodule Drip.Storage.Provider do
  @storage Application.get_env(:drip_engine, :storage_provider)

  defdelegate upload(path, content), to: @storage
  defdelegate download(path), to: @storage
end
