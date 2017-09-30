defmodule ExJobBenchmark.Exq.Worker do
  def perform(pid) do
    pid = :erlang.list_to_pid(pid)
    send pid, :ping
    :ok
  end
end
