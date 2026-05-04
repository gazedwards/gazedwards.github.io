# Observability for small systems

This is a working note, not a finished position.

The target is small services and internal tools that could grow over time. The
idea is to find a baseline level of observability that is cheap enough to add
early, but still useful once the system becomes more important or more complex.

## Core question

What is the least instrumentation work that produces the most operational value?

More specifically: what should be present before a small system starts failing in
ways that are difficult to explain from the outside?

## Working assumptions

- The baseline should be useful in both small internal tools and small services.
- The baseline should not assume a large platform team or a full observability stack.
- The baseline should reuse common signals that are likely to stay useful if the
  system grows.
- The goal is not full coverage. The goal is faster diagnosis with minimal effort.

## Signals worth keeping early

OpenTelemetry treats traces, metrics, and logs as the core telemetry signals, which
is a reasonable framing for this note as well.

For small online systems, the strongest early signals seem to be:

- request or job volume
- success and failure counts
- latency
- enough structured log context to explain failures
- trace or correlation IDs that let logs and requests be connected

This lines up reasonably well with Google SRE's four golden signals for user-facing
systems: latency, traffic, errors, and saturation. It also overlaps with
Prometheus guidance that online-serving systems should at minimum expose query
count, errors, and latency.

## What this note is trying to avoid

- shipping a large observability platform before there is a real need
- collecting signals that nobody looks at
- dashboards that feel impressive but do not help explain failures
- instrumentation that is so bespoke it cannot survive into the next system

## What is probably enough to start

### Logs

- Structured logs where possible
- Consistent severity levels
- Request, job, or correlation IDs
- Error logs with enough context to explain what failed and where

### Metrics

- Total requests or jobs
- Failure counts
- Latency distributions or percentiles
- A small number of resource or queue health indicators where they matter

### Traces

- Request traces for the main path through the system
- Propagated IDs between service boundaries where possible
- Enough span detail to identify slow or failing edges

## What not to do too early

- model every possible business event as a metric
- add high-cardinality labels without a clear use case
- build a deep dashboard hierarchy before you know what questions recur
- instrument rare edge cases before the main request path is visible

## Starter checklist

- Can I tie a failing request to a specific log trail?
- Can I see request volume, failures, and latency over time?
- Can I distinguish successful latency from failed latency?
- Can I identify which dependency or internal step is slow?
- Can I tell whether the system is overloaded, broken, or just noisy?

## Open questions

- What is the smallest useful trace setup for a single service plus one dependency?
- When does saturation become worth measuring explicitly in small internal tools?
- What baseline labels or fields are safe enough to standardise early?
- How much of this can become a reusable instrumentation scaffold?
