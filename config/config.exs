# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rose_car,
  ecto_repos: [RoseCar.Repo]

# Configures the endpoint
config :rose_car, RoseCarWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MybOOCOI0dmSQkdfiP+j5sPcSAWK0woJXYBrZ2G0JkLoSM7d5NrncZaqYQ9X2d8Y",
  render_errors: [view: RoseCarWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RoseCar.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "oBbtmVG4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
