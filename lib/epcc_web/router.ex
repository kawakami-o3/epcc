defmodule EpccWeb.Router do
  use EpccWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", EpccWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/compile", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", EpccWeb do
  #   pipe_through :api
  # end
end
