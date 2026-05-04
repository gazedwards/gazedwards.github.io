# Lab

Scraps of ideas before they are fully formed.

This page is deliberately rough. It is a holding space for topics that are interesting
enough to keep around, but not yet detailed enough to justify a dedicated note.

Working notes sit under this page once a thread has enough substance to deserve
examples, trade-offs, or implementation detail.

## Active threads

### General telemetry platform scaffolding

What would a minimal but reusable telemetry stack look like if it were designed for
small systems first, instead of enterprise-scale complexity from day one?

Likely output: a focused note on observability for small systems, starting from the
question of what is genuinely useful before a system becomes large or distributed.

Current working note: [Observability for small systems](observability-for-small-systems.md)

### Mock server tooling for local development

There is probably room for a lightweight set of tools that can generate or replay
source data for other projects without dragging in a full integration environment.

Likely output: a note on local-first integration testing patterns, especially once
there is a clearer view of what signals and traces are worth capturing during those
tests.

### Rust experiments

This may stay a curiosity, but there is enough interest here to justify a few notes
once there is something more concrete than "this seems neat" and closer to a real
systems or tooling problem worth exploring.

### Example catalogue for complex concepts

Some topics are hard to explain because examples are either too trivial or too tied
to one stack. A small catalogue of worked examples could be useful if it stays focused.
