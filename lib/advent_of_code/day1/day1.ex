defmodule AdventOfCode.Day1 do
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
