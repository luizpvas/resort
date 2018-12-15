defmodule Resort.Repo do
  use Ecto.Repo,
    otp_app: :resort,
    adapter: Ecto.Adapters.Postgres
end
