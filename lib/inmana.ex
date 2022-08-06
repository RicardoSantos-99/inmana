defmodule Inmana do
  alias Inmana.Restaurants
  alias Inmana.Supplies

  defdelegate create_restaurant(params), to: Restaurants.Create, as: :call
  defdelegate create_supply(params), to: Supplies.Create, as: :call
  defdelegate get_supply(params), to: Supplies.Get, as: :call
  defdelegate list_supplies, to: Supplies.List, as: :call
  defdelegate get_by_expiration, to: Supplies.GetByExpiration, as: :call
end
