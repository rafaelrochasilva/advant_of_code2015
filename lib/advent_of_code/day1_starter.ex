defmodule AdventOfCode.Day1Starter do
  def start() do
    """
    ========================================================================
    Santa is trying to deliver presents in a large apartment building, but he
    can't find the right floor - the directions he got are a little confusing.
    He starts on the ground floor (floor 0) and then follows the instructions
    one character at a time. An opening parenthesis, (, means he should go up
    one floor, and a closing parenthesis, ), means he should go down one floor.
    The apartment building is very tall, and the basement is very deep; he will
    never find the top or bottom floors.

    For example:

    (()) and ()() both result in floor 0.
    ((( and (()(()( both result in floor 3.

    Select a problem solver:
    1) Delivery Present with Recursion
    2) Delivery Present with GenServer
    q) Exit
    ========================================================================
    """
    |> IO.gets
    |> select_option
  end

  defp select_option("q\n"), do: IO.puts "Bye bye"

  defp select_option("1\n") do
    File.read!("public/day1.txt")
    |> AdventOfCode.Day1.DeliverPresentRecursion.floor
    |> display_result

    start
  end

  defp select_option("2\n") do
    path = File.read!("public/day1.txt")
    pid = AdventOfCode.Day1.DeliverPresentGenServer.start

    AdventOfCode.Day1.DeliverPresentGenServer.floor(pid, path)
    |> display_result

    start
  end

  defp select_option(_) do
    IO.puts "Option not valid"
    start
  end

  defp display_result(floor) do
    IO.puts "The present will be delivered at #{floor} floor."
  end
end
