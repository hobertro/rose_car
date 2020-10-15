defmodule RoseCar.Repo.Migrations.CreateMessages do
  use Ecto.Migration

  def change do
    create table(:messages) do
      add :first_name, :string
      add :last_name, :string
      add :phone_number, :string
      add :issue_type, :string
      add :issue_description, :string
      add :email, :string

      timestamps()
    end

  end
end
