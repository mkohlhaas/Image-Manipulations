#!/usr/bin/env bash

for f in blur/*.pnm; do
  for n in {08..32..4}; do
    magick "$f" -colors "$n" quant/"$(basename "$f" .pnm)_quant_$n.pnm"
  done
done
