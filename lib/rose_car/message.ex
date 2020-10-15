defmodule RoseCar.Message do
  use Ecto.Schema
  import Ecto.Changeset

  schema "messages" do
    field :email, :string
    field :first_name, :string
    field :issue_description, :string
    field :issue_type, :string
    field :last_name, :string
    field :phone_number, :string

    timestamps()
  end

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:first_name, :last_name, :phone_number, :issue_type, :issue_description, :email])
    |> validate_required([:first_name, :last_name, :phone_number, :issue_type, :issue_description, :email])
    |> validate_length(:first_name, min: 2)
  end
end
