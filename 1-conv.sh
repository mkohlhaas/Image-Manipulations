#!/usr/bin/env bash

for f in pexels/*.jpeg; do
  for i in {1..9..2}; do
    for j in {1..9..2}; do
      magick "$f" -blur "${i}x$j" blur/"$(basename "$f" .jpeg)_${i}x$j".pnm
    done
  done
done
