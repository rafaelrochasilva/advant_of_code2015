defmodule AdventOfCode.Day2Starter do
  alias AdventOfCode.Day2.PackageDimentionCalculator

  def start do
    display_main_menu
    |> IO.gets
    |> select_option
    |> display_result
  end

  defp display_main_menu do
    """
    The elves are running low on wrapping paper, and so they need to submit an 
    order for more. They have a list of the dimensions (length l, width w, and 
    height h) of each present, and only want to order exactly as much as they need.

    Fortunately, every present is a box (a perfect right rectangular prism), 
    which makes calculating the required wrapping paper for each gift a little
    easier: find the surface area of the box, which is 2*l*w + 2*w*h + 2*h*l.
    The elves also need a little extra paper for each present: the area of the
    smallest side.

    For example:

    A present with dimensions 2x3x4 requires 2*6 + 2*12 + 2*8 = 52 square feet
    of wrapping paper plus 6 square feet of slack, for a total of 58 square feet.

    A present with dimensions 1x1x10 requires 2*1 + 2*10 + 2*10 = 42 square
    feet of wrapping paper plus 1 square foot of slack, for a total of 43 square feet.
    ========================================================================
    Select a problem solver:
    1) Calculate Dimensions
    q) Exit
    ========================================================================
    """
  end

  defp select_option("q\n"), do: "Bye bye"

  defp select_option("1\n") do
    :timer.tc(PackageDimentionCalculator, :start, [file_read])
  end

  defp select_option(_), do: "Option not valid"

  defp display_result({time, dimention}) do
    "The total paper dimention is #{dimention} and executed in #{time/1_000_000} seconds"
    |> print_result(:blue)
  end

  defp display_result(phrase), do: print_result(phrase, :red)

  defp print_result(text, color) do
    [color, text]
    |> IO.ANSI.format
    |> IO.puts
  end

  defp file_read do
    File.read!("public/day2.txt")
  end
end

