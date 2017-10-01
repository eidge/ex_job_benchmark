defmodule ExJobBenchmark.Toniq.Worker do
  use Toniq.Worker, max_concurrency: 100_000

  def perform(pid) do
    send pid, :ping
    :ok
  end
end
