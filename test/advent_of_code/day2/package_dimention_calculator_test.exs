defmodule AdventOfCode.Day2.PackageDimentionCalculatorTest do
  use ExUnit.Case, async: true
  doctest AdventOfCode.Day2.PackageDimentionCalculator

  test "receives a list of packages and calculates it dimention" do
    string_list = "2x3x4\n1x1x10\n"
    assert AdventOfCode.Day2.PackageDimentionCalculator.start(string_list) == 101
  end

  test "returns the total packages dimentions" do
    list = ["2x3x4", "1x1x10", ""]

    assert AdventOfCode.Day2.PackageDimentionCalculator.process_packages(list, 0) == 101
  end

  test "calculate the dimention of a package" do
    assert AdventOfCode.Day2.PackageDimentionCalculator.calculate_dimention("2x3x4") == 58
  end
end
