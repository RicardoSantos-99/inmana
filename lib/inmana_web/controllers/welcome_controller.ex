defmodule InmanaWeb.WelcomeController do
  use InmanaWeb, :controller

  def index(conn, params) do
    {:ok, "Welcome to Inmana!"}
  end
end
