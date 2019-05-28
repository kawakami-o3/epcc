defmodule Epcc.Repo do
  use Ecto.Repo,
    otp_app: :epcc,
    adapter: Ecto.Adapters.Postgres
end
