defmodule AdventOfCode.Day2.PackageDimentionCalculator do
  @moduledoc """
  The Package Dimention Calculator is responsable for getting a list of dimentions
  process to get its total value
  """
  alias AdventOfCode.Day2.Box, as: Box

  def start(list) do
    String.split(list, "\n")
    |> process_packages(0)
  end

  @doc """
  Process the list of packages and returns its total

  ## Example
      iex> list = ["2x3x4", "1x1x10", ""]
      iex> AdventOfCode.Day2.PackageDimentionCalculator.process_packages(list, 0)
      101

  """
  def process_packages([""], total_dimention), do: total_dimention

  def process_packages([head|tail], total_dimention) do
    dimention = calculate_dimention(head)
    process_packages(tail, total_dimention + dimention)
  end

  @doc """
  Calculates the dimention of the current package, and parse the string before
  calculating it.

  ## Example
      iex> AdventOfCode.Day2.PackageDimentionCalculator.calculate_dimention("2x3x4")
      58

  """
  def calculate_dimention(dimentions) do
    [x, y, z] = String.split(dimentions, "x")

    Box.surface_with_slack(
                           String.to_integer(x),
                           String.to_integer(y),
                           String.to_integer(z)
                         )
  end
end
