# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :resort,
  ecto_repos: [Resort.Repo]

# Configures the endpoint
config :resort, ResortWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HThIHx0a7E1qpbZGGc9M5tNC/vuN84gWR0UyrsqpPyDs0wavyxRX/9YgvxIwNu83",
  render_errors: [view: ResortWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Resort.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
