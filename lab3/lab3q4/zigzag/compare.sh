#!/bin/bash
mode="$1"
previous="$2"
current="$3"
if [ $# != 3 ]; then
  echo "Please enter three arguments." >&2
  exit 1
fi
if [ "$mode" == "Zig" ]; then
  if [ "$previous" -ge "$current" ]; then
    echo "Zag"
  else
    echo "Zig"
  fi
elif [ "$mode" == "Zag" ]; then
  if [ "$previous" -le "$current" ]; then
    echo "Zig"
  else
    echo "Zag"
  fi
else
  echo "Invalid mode: $mode" >&2
  exit 1
fi
