defmodule AdventOfCode.Day2.Box do
  @moduledoc """
  The Box module is responsable to calculate the area of a given
  surface axis. By this we can help elves do not running in low on wrapping
  paper.
  """

  @doc """
  Calculates the surface with slack, given a list of dimensions
  (length, width, height)

  ## Example

      iex> AdventOfCode.Day2.Box.surface_with_slack(2, 3, 4)
      58

  Returns the total surface needed to package the present.
  """
  def surface_with_slack(x, y, z) do
    surface(x, y, z) + slack(x, y, z)
  end

  def surface(x, y), do: 2 * x * y

  def surface(x, y, z) do
    surface(x, y) + surface(y, z) + surface(z, x)
  end

  @doc "
  Calculates the slack of the present paper needed to packge the paper,
  by getting the smallest axis and multipling it.

  Returns: The area of the needed extra paper.
  "
  def slack(x, y, z) do
    [first, second] = smallest_axis(x, y, z)
    first * second
  end

  @doc """
  Given a list o axis, it returns the first two smallest
  """
  def smallest_axis(x, y, z) do
    Enum.sort([x, y, z])
    |> Enum.slice(0, 2)
  end
end
