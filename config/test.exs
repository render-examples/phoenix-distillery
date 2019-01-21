use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_distillery, PhoenixDistilleryWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phoenix_distillery, PhoenixDistillery.Repo,
  username: "postgres",
  password: "postgres",
  database: "phoenix_distillery_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
