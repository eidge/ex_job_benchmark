# ExJobBenchmark

Simple benchmark - take it with a pinch of salt as all benchmarks - that runs
[ExJob](https://github.com/eidge/ex_job), [Exq](https://github.com/akira/exq)
and [Toniq](https://github.com/joakimk/toniq) against each other.

For a simple job which receives the benchmark process pid and sends it a message
containing `:ping`, the results on my Mid 2015 15-inch (2,5 GHz Intel Core i7)
were:

```
Name            ips        average  deviation         median
ExJob         23.96       41.73 ms     ±2.36%       41.53 ms
Toniq          1.91      523.63 ms     ±3.03%      519.35 ms
Exq            0.69     1450.35 ms    ±24.63%     1452.40 ms

Comparison:
ExJob         23.96
Toniq          1.91 - 12.55x slower
Exq            0.69 - 34.76x slower
```

To run the benchmarks yourself:

`mix run samples/ping.exs`

Feel free to contribute any other benchmarks that you might find relevant by
sending a pull-request.
