defmodule Drip.Storage do
  alias Drip.Storage.Media
  alias Drip.Storage.Provider

  def store(%Media{} = media, content) do
    media
    |> generate_storage_key()
    |> Map.get(:storage_key)
    |> Provider.upload(content)
  end

  def retrieve(%Media{storage_key: storage_key}) do
    Provider.download(storage_key)
  end

  def generate_storage_key(_) do
    "xxx"
  end
  # ...
end
