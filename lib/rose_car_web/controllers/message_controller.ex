defmodule RoseCarWeb.MessageController do
  use RoseCarWeb, :controller

  alias RoseCar.Message

  def index(conn, _params) do
    messages = Message.list_messages()
    render(conn, "index.json", messages: messages)
  end

  def new(conn, _params) do
    changeset = Message.changeset(%Message{}, %{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"message" => message_params}) do
    case Message.create(message_params) do
      {:ok, message} ->
        conn
          |> put_flash(:success , "We have received your message and will get back to you as soon as possible!")
          |> redirect(to: "/")

      {:error, %Ecto.Changeset{} = changeset} ->
        conn
          |> put_flash(:error, "There was an error sending your message.")
          |> redirect(to: "/")
    end
  end

  # def show(conn, %{"id" => id}) do
  #   user = Accounts.get_user!(id)
  #   render(conn, "show.html", user: user)
  # end

  # def edit(conn, %{"id" => id}) do
  #   user = Accounts.get_user!(id)
  #   changeset = Accounts.change_user(user)
  #   render(conn, "edit.html", user: user, changeset: changeset)
  # end

  # def update(conn, %{"id" => id, "user" => message_params}) do
  #   user = Accounts.get_user!(id)

  #   case Accounts.update_user(user, message_params) do
  #     {:ok, user} ->
  #       conn
  #       |> put_flash(:info, "User updated successfully.")
  #       |> redirect(to: Routes.user_path(conn, :show, user))

  #     {:error, %Ecto.Changeset{} = changeset} ->
  #       render(conn, "edit.html", user: user, changeset: changeset)
  #   end
  # end

  # def delete(conn, %{"id" => id}) do
  #   user = Accounts.get_user!(id)
  #   {:ok, _user} = Accounts.delete_user(user)

  #   conn
  #   |> put_flash(:info, "User deleted successfully.")
  #   |> redirect(to: Routes.user_path(conn, :index))
  # end
end
