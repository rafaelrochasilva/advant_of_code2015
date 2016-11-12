defmodule AdventOfCode.Day1.DeliverPresentTask do
  def floor(deliver) do
    {deliver1, deliver2} = break_delivery_in_two(deliver)
    task1 = Task.async(AdventOfCode.Day1.DeliverPresentRecursion, :floor, [deliver1])
    task2 = Task.async(AdventOfCode.Day1.DeliverPresentRecursion, :floor, [deliver2])

    Task.await(task1) + Task.await(task2)
  end

  def break_delivery_in_two(deliver) do
    half_deliver_size = div(byte_size(deliver), 2)

    first_part_deliver = binary_part(deliver, 0, half_deliver_size)
    second_part_deliver = binary_part(deliver, half_deliver_size, half_deliver_size)

    {first_part_deliver, second_part_deliver}
  end
end
