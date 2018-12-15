defmodule ResortWeb.PageController do
  use ResortWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
