defmodule AdventOfCode.Day1.DeliverPresentAggregator do
  def start(path) do
    path
    |> break_path_in_two
    |> process_path
  end

  def break_path_in_two(path) do
    half_path_size = div(byte_size(path), 2)

    first_part_path = binary_part(path, 0, half_path_size)
    second_part_path = binary_part(path, half_path_size, half_path_size)

    {first_part_path, second_part_path}
  end

  def process_path({first_part, second_part}) do
    pid1 = AdventOfCode.Day1.DeliverPresentGenServer.start
    # pid2 = AdventOfCode.Day1.DeliverPresentGenServer.start

    result1 = AdventOfCode.Day1.DeliverPresentGenServer.floor(pid1, first_part)
    # result2 = AdventOfCode.Day1.DeliverPresentGenServer.floor(pid2, second_part)

    # result1 + result2
  end
end
