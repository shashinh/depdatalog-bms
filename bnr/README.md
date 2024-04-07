# BNR
A collection of benchmarks from the Bayesian Network Repository (https://www.bnlearn.com/bnrepository/) to evaluate DepDatalog

BMs are classified by size. For each benchmark, the `/BIF` directory contains the benchmark in its original BIF format, and the `/graph` directory contains artifacts to encode the same BM as a dependency graph. These artifacts are as follows:

- `events.txt`: lists all events in the network (including both input and inferred facts)
- `facts.txt` : lists all input facts in the network, as `input_fact_name probability`. For example `earthquake 0.99`
- `edges.txt` : lists all edges in the network, as `event <comma-separated list of dependencies> probability`.  
For example `alarm earthquake,burglary 0.75` means "alarm is dependent on earthquake and burglary with a probability of 0.75". Or in terms of probability, `P(alarm | earthquake, burglary) = 0.75`.

More than one edge with the same `event` means there is a disjunction in the graph.
For example, if the graph has both edges `alarm earthquake,burglary 0.75` and `alarm fire 0.85`, it means `alarm` is defined by a disjunction `alarm = (earthquake, burglary) OR (fire)`

