require IEx;

defmodule AdventOfCode.Day1Starter do

  def start() do
    """
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
      2) Exit
    """
    |> IO.gets
    |> select_algorithm
  end

  defp select_algorithm("1\n") do
    present_route = File.read!("public/day1.txt")
    floor = AdventOfCode.Day1.DeliverPresentRecursion.floor(present_route)

    IO.puts "The present will be delivered at #{floor} floor."
  end

  defp select_algorithm("2\n"), do: IO.puts "Good bye"
end
