defmodule ExJobBenchmark.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_job_benchmark,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :ex_job],
      mod: {ExJobBenchmark.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_job, "~> 0.2.1"},
      {:exredis, ">= 0.1.1"},
      {:exq, "~> 0.9.0"},
      {:toniq, "~> 1.0"},
      {:benchee, "~> 0.9", only: :dev}
    ]
  end
end
