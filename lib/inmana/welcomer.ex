defmodule Inmana.Welcomer do
  def welcome(params) do
    %{"name" => name, "age" => age} = params

    "Hello #{name}, you are #{age} years old."
  end
end
