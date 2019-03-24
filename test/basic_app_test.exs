defmodule BasicAppTest do
  use ExUnit.Case
  doctest BasicApp

  test "greets the world" do
    assert BasicApp.hello() == :world
  end
end
