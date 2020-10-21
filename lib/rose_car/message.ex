defmodule RoseCar.Message do
  use Ecto.Schema
  import Ecto.Changeset

  alias RoseCar.{Repo, Message}

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
  end

  def create(attrs) do
    %Message{}
     |> Message.changeset(attrs)
     |> Repo.insert()
  end

  def list_messages do
    Message
     |> Repo.all()
  end
end
