defmodule SecondappTest do
  use ExUnit.Case
  doctest Secondapp

  test "greets the world" do
    assert Secondapp.hello() == :world
  end
end
