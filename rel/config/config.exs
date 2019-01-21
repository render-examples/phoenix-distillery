use Mix.Config

port = String.to_integer(System.get_env("PORT") || "4000")

config :phoenix_distillery, PhoenixDistilleryWeb.Endpoint,
  http: [port: port],
  url: [host: "localhost", port: port],
  secret_key_base: System.get_env("SECRET_KEY_BASE")