defmodule AdventOfCode.Day1.DeliverPresentGenServerTest do
  use ExUnit.Case
  doctest AdventOfCode.Day1.DeliverPresentGenServer

  test "returns the proper floor that santa needs to delivery the present" do
    pid = AdventOfCode.Day1.DeliverPresentGenServer.start

    assert AdventOfCode.Day1.DeliverPresentGenServer.floor(pid, "(())") == 0
    assert AdventOfCode.Day1.DeliverPresentGenServer.floor(pid, "(()(()(") == 3
    assert AdventOfCode.Day1.DeliverPresentGenServer.floor(pid, "())") == -1
    assert AdventOfCode.Day1.DeliverPresentGenServer.floor(pid, ")))") == -3
  end
end
