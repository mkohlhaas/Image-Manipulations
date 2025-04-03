#!/usr/bin/env bash

for q in quant/*.pnm; do
  magick "$q" -colorspace Gray gray/"$(basename "$q" .pnm)"_gray.pnm
done
