#!/bin/bash
set -e

INPUT=${1:-maintext-ja.md}
OUTPUT="${INPUT%.md}.html"

pandoc -f markdown "$INPUT" \
  -s \
  --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js \
  -c lecture.css \
  --metadata title="Final Lecture" \
  -o "$OUTPUT"
