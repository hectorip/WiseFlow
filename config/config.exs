# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :wiseFlow,
  ecto_repos: [WiseFlow.Repo]

# Configures the endpoint
config :wiseFlow, WiseFlow.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gmBzXC+NHGyFcnpouQn39IDF6rf7vluQ40+90m+7gW4reyxxFuc0aZfksdqOD7OI",
  render_errors: [view: WiseFlow.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WiseFlow.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
