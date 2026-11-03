#!/usr/bin/env bash
# Builds all three Lab 2 programs. Run from the Lab2 folder: ./build_all.sh
set -e
cd "$(dirname "$0")"
for p in incrementing_display variable_pattern single_segment_test; do
  echo "=== Building $p ==="
  cmake -S "$p" -B "$p/build" > /dev/null
  cmake --build "$p/build" -j4
  echo "UF2: $p/build/$p.uf2"
done
