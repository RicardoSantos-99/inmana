defmodule Inmana.Supplies.GetByExpiration do
  import Ecto.Query

  alias Inmana.{Supply, Repo, Restaurant}

  def call do
    today = Date.utc_today()
    beginning_of_day = Date.beginning_of_week(today)
    end_of_week = Date.end_of_week(today)

    query =
      from s in Supply,
        where:
          s.expiration_date >= ^beginning_of_day and
            s.expiration_date <= ^end_of_week,
        preload: [:restaurant]

    query
    |> Repo.all()
    |> Enum.group_by(fn %Supply{restaurant: %Restaurant{email: email}} -> email end)
  end
end
