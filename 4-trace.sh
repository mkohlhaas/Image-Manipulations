#!/usr/bin/env bash

for f in quant/*.pnm; do
  potrace --svg --output trace/"$(basename "$f" .pnm)"_trace.svg "$f"
done
