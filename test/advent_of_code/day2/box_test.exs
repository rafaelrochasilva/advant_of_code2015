defmodule AdventOfCode.Day2.BoxTest do
  use ExUnit.Case, async: true
  doctest AdventOfCode.Day2.Box

  test "calculates the total surface with extra area" do
    assert AdventOfCode.Day2.Box.surface_with_slack(2, 3, 4) == 58
  end

  test "calculates the total surface given 3 axis" do
    assert AdventOfCode.Day2.Box.surface(2, 3, 4) == 52
  end

  test "calculates the surface area given 2 axis" do
    assert AdventOfCode.Day2.Box.surface(2, 3) == 12
  end

  test "returns the 2 smallest axis given 3 axis" do
    assert AdventOfCode.Day2.Box.smallest_axis(2, 3, 4) == [2, 3]
  end

  test "calculates the extra surface needed" do
    assert AdventOfCode.Day2.Box.slack(2, 3, 4) == 6
  end
end
