defmodule UaTestTest do
  use ExUnit.Case
  doctest UaTest

  test "greets the world" do
    assert UaTest.hello() == :world
  end
end
