#!/usr/bin/env bash

for f in pexels/*.jpeg; do
  for i in {05..15..01}; do
    # for j in {1..10..1}; do
    magick "$f" -gaussian-blur "${i}x$i" blur/"$(basename "$f" .jpeg)_${i}x$i".pnm
    # done
  done
done
