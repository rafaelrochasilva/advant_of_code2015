defmodule AdventOfCode.Day1Test do
  use ExUnit.Case

  test "floor" do
    assert AdventOfCode.Day1.floor("(())") == 0
    assert AdventOfCode.Day1.floor("(()(()(") == 3
    assert AdventOfCode.Day1.floor("())") == -1
    assert AdventOfCode.Day1.floor(")))") == -3
  end
end

