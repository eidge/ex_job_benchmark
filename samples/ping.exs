jobs = 0..10_000

ex_job = fn ->
  Enum.each(jobs, fn _ -> ExJob.enqueue(ExJobBenchmark.ExJob.Job, [self()]) end)
  Enum.each(jobs, fn _ ->
    receive do
      :ping -> :ok
    end
  end)
end

toniq = fn ->
  Enum.each(jobs, fn _ -> Toniq.enqueue(ExJobBenchmark.Toniq.Worker, self()) end)
  Enum.each(jobs, fn _ ->
    receive do
      :ping -> :ok
    end
  end)
end

exq = fn ->
  Enum.each(jobs, fn _ -> Exq.enqueue(Exq, "default", ExJobBenchmark.Exq.Worker, [:erlang.pid_to_list(self())]) end)
  Enum.each(jobs, fn _ ->
    receive do
      :ping -> :ok
    end
  end)
end

Benchee.run(%{
  "ExJob" => ex_job,
  "Toniq" => toniq,
  "Exq" => exq
})
