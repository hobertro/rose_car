defmodule RoseCarWeb.MessageView do
  use RoseCarWeb, :view

  def render("index.json", %{messages: messages}) do
    %{messages: Enum.map(messages, &message_json/1)}
  end

  # def render("show.json", %{message: message}) do
  #   %{messages: render_one(page, RoseCar.PageView, "page.json")}
  # end

  def message_json(message) do
    %{
      email: message.email,
      first_name: message.first_name,
      last_name: message.last_name,
    }
  end
end
