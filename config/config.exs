# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chirp,
  ecto_repos: [Chirp.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :chirp, ChirpWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MN/xRFVD4svA+ohEDUBEdqj3BhWHSRI7Ixe93uHJZtppE/jteeKV0/fajtt0fBPh",
  render_errors: [view: ChirpWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Chirp.PubSub,
  live_view: [signing_salt: "9IJ+rMKj"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
