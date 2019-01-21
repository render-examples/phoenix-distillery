defmodule PhoenixDistillery.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_distillery,
    adapter: Ecto.Adapters.Postgres
end
