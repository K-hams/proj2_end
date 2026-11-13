# P02 Part 2: Malloc with an Explicit Free List

The full instructions are in the P02 Part 2 writeup. `src/mm-explicit.c` is
the Part 1 starter code, updated for Part 2. Before you start, paste your
Part 1 code into it: the comment at the top of the file lists the steps.

## Build and run

```bash
make
./bin/mdriver-explicit
```

On an Apple Silicon Mac, build for x86 instead (runs under Rosetta):

```bash
make clean
make CC="clang -arch x86_64"
```

## Useful driver flags

- `./bin/mdriver-explicit -c traces/short2.rep` runs one trace once and only checks correctness.
- `./bin/mdriver-explicit -D` calls your `mm_checkheap` before every operation.

## What to submit

Only `src/mm-explicit.c`.
