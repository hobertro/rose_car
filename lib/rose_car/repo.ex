defmodule RoseCar.Repo do
  use Ecto.Repo,
    otp_app: :rose_car,
    adapter: Ecto.Adapters.Postgres
end
