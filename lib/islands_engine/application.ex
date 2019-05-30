defmodule IslandsEngine.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      via = Game.via_tuple("Lena"):sys.get_state(via)  {Registry, keys: :unique, name: Registry.Game}
    ]

    opts = [strategy: :one_for_one, name: IslandsEngine.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
