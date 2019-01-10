defmodule Drip.Storage.Supervisors.CacheSupervisor do
  use DynamicSupervisor
  alias Drip.Storage.Workers.CacheWorker
  # ...
  def put(id, content)
    when is_binary(id) and is_bitstring(content) do
      DynamicSupervisor.start_child(
        __MODULE__,
        cache_worker_spec(id, content)
      )
  end

  def get(id) when is_binary(id) do
    case find_cache(id) do
      nil -> nil
      pid -> CacheWorker.get_media(pid)
    end
  end

  def find_cache(id) when is_binary(id) do
    GenServer.whereis(CacheWorker.name_for(id))
  end

  def cache_worker_spec(_, _) do
    ""
  end
end
