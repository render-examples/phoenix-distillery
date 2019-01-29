use Mix.Config

port = String.to_integer(System.get_env("PORT") || "4000")

default_secret_key_base = :crypto.strong_rand_bytes(48) |> Base.encode64
secret_key_base = System.get_env("SECRET_KEY_BASE") || default_secret_key_base

config :phoenix_distillery, PhoenixDistilleryWeb.Endpoint,
  http: [port: port],
  url: [host: "localhost", port: port],
  secret_key_base: secret_key_base
