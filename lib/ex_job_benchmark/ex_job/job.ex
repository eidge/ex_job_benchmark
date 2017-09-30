defmodule ExJobBenchmark.ExJob.Job do
  use ExJob.Job

  def perform(pid) do
    send pid, :ping
    :ok
  end
end
