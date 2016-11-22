defmodule AdventOfCode.Day3.DeliverPresentTest do
  use ExUnit.Case, aync: true

  test "delivers presents to 2 houses, one at start pont ohter to the east" do
    route = ">"
    assert(AdventOfCode.Day3.DeliverPresent.total_houses(route)) == 2
  end
end
