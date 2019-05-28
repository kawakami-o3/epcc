defmodule EpccWeb.PageController do
  use EpccWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
