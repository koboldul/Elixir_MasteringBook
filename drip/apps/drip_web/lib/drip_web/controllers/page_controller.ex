defmodule DripWeb.PageController do
  use DripWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
