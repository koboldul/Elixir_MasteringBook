defmodule DripEngine.Repo do
  use Ecto.Repo,
    otp_app: :drip_engine,
    adapter: Ecto.Adapters.Postgres
end
