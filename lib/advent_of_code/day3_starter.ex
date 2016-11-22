defmodule AdventOfCode.Day3Starter do
  alias AdventOfCode.Day3.DeliverPresent

  def start do
    display_main_menu
    |> IO.gets
    |> select_option
    |> display_result
  end

  defp display_main_menu do
    """
    Santa is delivering presents to an infinite two-dimensional grid of houses.
    He begins by delivering a present to the house at his starting location,
    and then an elf at the North Pole calls him via radio and tells him where
    to move next. Moves are always exactly one house to the north (^),
    south (v), east (>), or west (<). After each move, he delivers another 
    present to the house at his new location.
    However, the elf back at the north pole has had a little too much eggnog,
    and so his directions are a little off, and Santa ends up visiting some
    houses more than once. How many houses receive at least one present?

    For example:

    > delivers presents to 2 houses: one at the starting location,
    and one to the east.
    ^>v< delivers presents to 4 houses in a square, including twice to the
    house at his starting/ending location.
    ^v^v^v^v^v delivers a bunch of presents to some very lucky children at only
    2 houses.
    ========================================================================
    Select a problem solver:
    1) House Presents Delivery
    q) Exit
    ========================================================================
    """
  end

  defp select_option("q\n"), do: "Bye bye"

  defp select_option("1\n") do
    :timer.tc(DeliverPresent, :start, [file_read])
  end

  defp select_option(_), do: "Option not valid"

  defp display_result({time, number_of_houses}) do
    "#{number_of_houses} received a present in #{time/1_000_000} seconds"
    |> print_result(:blue)
  end

  defp display_result(phrase), do: print_result(phrase, :red)

  defp print_result(text, color) do
    [color, text]
    |> IO.ANSI.format
    |> IO.puts
  end

  defp file_read do
    File.read!("public/day3.txt")
  end
end
