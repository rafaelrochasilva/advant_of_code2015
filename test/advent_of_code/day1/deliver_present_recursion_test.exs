defmodule AdventOfCode.Day1.DevilverPresentRecursionTest do
  use ExUnit.Case
  doctest AdventOfCode.Day1.DeliverPresentRecursion

  test "returns the proper floor that santa needs to delivery the present" do
    assert AdventOfCode.Day1.DeliverPresentRecursion.floor("(())") == 0
    assert AdventOfCode.Day1.DeliverPresentRecursion.floor("(()(()(") == 3
    assert AdventOfCode.Day1.DeliverPresentRecursion.floor("())") == -1
    assert AdventOfCode.Day1.DeliverPresentRecursion.floor(")))") == -3
  end
end
