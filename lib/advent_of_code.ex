defmodule AdventOfCode do
  use Application

  def start(_type, _args) do
    welcome_message

    display_options
    |> IO.gets
    |> choose_option
  end

  defp welcome_message() do
    """
    ========================================================================
    ========================================================================
    Advent of Code is a series of small programming puzzles for a variety of
    skill levels. They are self-contained and are just as appropriate for an
    expert who wants to stay sharp as they are for a beginner who is just
    learning to code. Each puzzle calls upon different skills and has two
    parts that build on a theme.
    """
    |> IO.puts
  end

  defp display_options() do
    """
    ========================================================================
    Choose a day to run the respective code:
    1) Day 1 - Santa Delives Presents
    q) Quit
    """
  end

  defp choose_option("1\n"), do: AdventOfCode.Day1Starter.start
  defp choose_option("q\n"), do: IO.puts "Bye bye" 
end
