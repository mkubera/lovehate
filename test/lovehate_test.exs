defmodule LovehateTest do
  use ExUnit.Case
  doctest Lovehate

  test "greets the world" do
    assert Lovehate.hello() == :world
  end

  test "picks only :love" do
    assert Lovehate.pick_love() == [:love, :love]
  end

  test "sorts :love and :hate" do
    assert Lovehate.sort_love_and_hate() == [[:love, :love], [:hate,:hate,:hate]]
  end
end
