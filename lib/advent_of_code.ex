defmodule AdventOfCode do
  use Application

  def start(_type, _args) do
    IO.puts "Starting application.."
    AdventOfCode.Day1Starter.start
  end
end
