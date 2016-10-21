defmodule AdventOfCode.Day1.DeliverPresentsV1 do
  @moduledoc """
  Deliver Presents is used to help Santa to find the proper floor.
  """

  @doc """
  Defines the floor that Santa should deliver the present.

  Returns 'floor'

  ## Examples
    iex> AdventOfCode.Day1.DeliverPresentsV1.floor("(())")
    0
    iex> AdventOfCode.Day1.DeliverPresentsV1.floor("(())")
    0
  """
  def floor(deliver) do
    deliver
    |> to_char_list
    |> find_floor(0)
  end

  defp find_floor([], floor_number) do
    floor_number
  end

  defp find_floor([head | tail], floor_number) when <<head>> == "(" do
    find_floor(tail, floor_number + 1)
  end

  defp find_floor([head | tail], floor_number) when <<head>> == ")" do
    find_floor(tail, floor_number - 1)
  end
end
