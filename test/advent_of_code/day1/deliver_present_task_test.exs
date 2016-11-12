defmodule AdventOfCode.Day1.DeliverPresentTaskTest do
  use ExUnit.Case

  test "divide a given deliver in two" do
    deliver = "((()))"

    assert {"(((", ")))"} == AdventOfCode.Day1.DeliverPresentTask.break_delivery_in_two(deliver)
  end

  test "returns the proper floor given a deliver" do
    deliver = "(((())))"

    assert 0 == AdventOfCode.Day1.DeliverPresentTask.floor(deliver)
  end
end
