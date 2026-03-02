#!/bin/bash
set -e

INPUT=${1:-maintext-ja.md}
OUTPUT="${INPUT%.md}.html"

pandoc -f markdown "$INPUT" \
  -s \
  --mathjax \
  -c lecture.css \
  --metadata title="Final Lecture" \
  -o "$OUTPUT"
