#!/bin/bash
mode=""
for number in $(cat -); do
  if [ "$mode" == "" ]; then
    mode="Zig"
    echo "$mode"
  else
    new_mode="$(./compare.sh "$mode" "$previous" "$number")"
    if [ "$new_mode" != "$mode" ]; then
      mode="$new_mode"
      echo "$mode"
    fi
  fi
  previous="$number"
done
