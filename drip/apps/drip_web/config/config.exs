# Since configuration is shared in umbrella projects, this file
# should only configure the :drip_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :drip_web,
  ecto_repos: [DripWeb.Repo],
  generators: [context_app: false]

# Configures the endpoint
config :drip_web, DripWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0X8aCD1h9Fi8ykspP493O7XaW1I6ZZLkCW4Mhm8vbkuTOd/ljjk7dSDp9XHb7Wjh",
  render_errors: [view: DripWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DripWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
