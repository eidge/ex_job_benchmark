# ExJobBenchmark

Simple benchmark - take it with a pinch of salt as all benchmarks - that runs
[ExJob](https://github.com/eidge/ex_job), [Exq](https://github.com/akira/exq)
and [Toniq](https://github.com/joakimk/toniq) against each other.

For a simple job which receives the benchmark process pid and sends it a message
containing `:ping`, the results on my Mid 2015 15-inch (2,5 GHz Intel Core i7)
were:

```
Name            ips        average  deviation         median
ExJob         12.25       81.62 ms    ±10.19%       82.71 ms
Toniq          2.06      484.53 ms     ±5.02%      486.17 ms
Exq            0.72     1390.99 ms    ±29.17%     1261.29 ms

Comparison:
ExJob         12.25
Toniq          2.06 - 5.94x slower
Exq            0.72 - 17.04x slower
```

To run the benchmarks yourself:

`mix run samples/ping.exs`

Feel free to contribute any other benchmarks that you might find relevant by
sending a pull-request.
