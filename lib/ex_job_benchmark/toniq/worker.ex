defmodule ExJobBenchmark.Toniq.Worker do
  use Toniq.Worker

  def perform(pid) do
    send pid, :ping
    :ok
  end
end
