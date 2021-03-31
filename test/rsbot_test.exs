defmodule RsbotTest do
  use ExUnit.Case
  doctest Rsbot

  test "greets the world" do
    assert Rsbot.hello() == :world
  end
end
