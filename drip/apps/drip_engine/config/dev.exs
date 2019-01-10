# Since configuration is shared in umbrella projects, this file
# should only configure the :drip_engine application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :drip_engine, DripEngine.Repo,
  username: "postgres",
  password: "postgres",
  database: "drip_engine_dev",
  hostname: "172.17.0.2",
  pool_size: 10
