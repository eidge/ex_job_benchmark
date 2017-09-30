use Mix.Config

config :toniq, redis_url: "redis://0.0.0.0:6379"
config :exq,
  host: "127.0.0.1",
  port: 6379,
  namespace: "exq",
  concurrency: 100_000,
  queues: ["default"],
  middleware: [Exq.Middleware.Stats, Exq.Middleware.Job, Exq.Middleware.Manager]
