defmodule Inmana.Supplies.List do
  alias Inmana.{Repo, Supply}

  def call do
    {:ok, Repo.all(Supply)}
  end
end
