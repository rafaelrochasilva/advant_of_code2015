defmodule AdventOfCode.Day1.DevilverPresentsV1Test do
  use ExUnit.Case
  doctest AdventOfCode.Day1.DeliverPresentsV1

  test "returns the proper floor that santa needs to delivery the present" do
    assert AdventOfCode.Day1.DeliverPresentsV1.floor("(())") == 0
    assert AdventOfCode.Day1.DeliverPresentsV1.floor("(()(()(") == 3
    assert AdventOfCode.Day1.DeliverPresentsV1.floor("())") == -1
    assert AdventOfCode.Day1.DeliverPresentsV1.floor(")))") == -3
  end
end
