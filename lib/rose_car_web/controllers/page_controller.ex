defmodule RoseCarWeb.PageController do
  use RoseCarWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
