#!/usr/bin/env bash

for f in blur/*.pnm; do
  for n in {14..20..1}; do
    magick "$f" -colors "$n" quant/"$(basename "$f" .pnm)_quant_$n.pnm"
  done
done
