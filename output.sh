#!/bin/bash
while IFS= read -r line; do
  if echo "$line" | grep -m1 -E -o 'TestRun#[0-9]+ failed'; then
    printf '%s\n' "$line"
    exit 2
  elif echo "$line" | grep -m1 -E -o 'TestRun#[0-9]+ has invalid state: interrupted'; then
    printf '%s\n' "$line"
    exit 1
  elif echo "$line" | grep -m1 -E -o 'TestRun#[0-9]+ passed'; then
    printf '%s\n' "$line"
    exit 0
  else
    printf '%s\n' "$line"
  fi
done