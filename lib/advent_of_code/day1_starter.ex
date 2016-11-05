defmodule AdventOfCode.Day1Starter do
  def start() do
    display_main_menu
    |> IO.gets
    |> select_option
    |> display_result

    start
  end

  defp display_main_menu do
    """
    ========================================================================
    Santa is trying to deliver presents in a large apartment building, but he
    can't find the right floor - the directions he got are a little confusing.\n
    He starts on the ground floor (floor 0) and then follows the instructions
    one character at a time.\n An opening parenthesis, (, means he should go up
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
  end

  defp select_option("q\n"), do: "Bye bye"

  defp select_option("1\n") do
    path = File.read!("public/day1.txt")

    :timer.tc(AdventOfCode.Day1.DeliverPresentRecursion, :floor, [path])
  end

  defp select_option("2\n") do
    path = File.read!("public/day1.txt")
    pid = AdventOfCode.Day1.DeliverPresentGenServer.start

    :timer.tc(AdventOfCode.Day1.DeliverPresentGenServer, :floor, [pid, path])
  end

  defp select_option(_), do: "Option not valid"

  defp display_result({time, floor}) do
    "The present will be delivered at #{floor} floor, in #{time/1_000_000} seconds."
    |> print_result(:blue)
  end

  defp display_result(phrase), do: print_result(phrase, :red)

  defp print_result(text, color) do
    [color, text]
    |> IO.ANSI.format
    |> IO.puts
  end
end
