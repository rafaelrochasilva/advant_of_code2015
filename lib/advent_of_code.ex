defmodule AdventOfCode do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [worker(AdventOfCode.DayChooser, [])]
    opts = [strategy: :one_for_one, name: AdventOfCode.Supervisor]

    Supervisor.start_link(children, opts)
  end
end
