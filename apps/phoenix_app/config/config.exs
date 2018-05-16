# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_app,
  namespace: PhoenixApp

# Configures the endpoint
config :phoenix_app, PhoenixAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0lTBCQprUq8Zoo6x8WqeYmqe36Czk0jAELsE0POXk/ZNP1wyW2N2X6wocVT3Qlg7",
  render_errors: [view: PhoenixAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
