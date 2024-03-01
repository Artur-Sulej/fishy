defmodule FishyTest do
  use ExUnit.Case
  doctest Fishy

  test "greets the world" do
    assert Fishy.hello() == :world
  end
end
