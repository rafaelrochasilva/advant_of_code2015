defmodule AdventOfCode.Day1.DeliverPresentGenServer do
  use GenServer

  # Client API
  def start() do
    initial_floor = 0
    {:ok, pid} = GenServer.start_link(__MODULE__, initial_floor, [])
    pid
  end

  def floor(pid, deliver) do
    path = to_char_list(deliver)
    find_floor(pid, path)
  end

  def find_floor(pid, []) do
    GenServer.call(pid, {:floor, []})
  end

  def find_floor(pid, [head | tail]) do
    GenServer.call(pid, {:floor, [head | tail]})
    floor(pid, tail)
  end

  # Server API
  def handle_call({:floor, [head | tail]}, _from, floor_number) when <<head>> == "(" do
    {:reply, tail, floor_number + 1}
  end

  def handle_call({:floor, [head | tail]}, _from, floor_number) when <<head>> == ")" do
    {:reply, tail, floor_number - 1}
  end

  def handle_call({:floor, []}, _from, floor_number) do
    {:reply, floor_number, floor_number}
  end

  def handle_call({:floor, '\n'}, _from, floor_number) do
    {:reply, floor_number, floor_number}
  end
end
