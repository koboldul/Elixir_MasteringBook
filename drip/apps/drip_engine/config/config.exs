# Since configuration is shared in umbrella projects, this file
# should only configure the :drip_engine application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :drip_engine,
  ecto_repos: [DripEngine.Repo]

  config :drip_engine,
  storage_provider: Drip.Storage.Providers.Google.Local

import_config "#{Mix.env()}.exs"
