defmodule AdventOfCode.Day1.DeliverPresentAggregatorTest do
  use ExUnit.Case

  test "returns a split path in 2 parts" do
    path = "((()))\n"

    assert AdventOfCode.Day1.DeliverPresentAggregator.break_path_in_two(path) == { "(((", ")))" }
  end
end
