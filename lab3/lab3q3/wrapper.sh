#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Error: Exactly one argument is required." >&2
  exit 4
fi

stem=$1

if [ ! -f "${stem}.args" ] || [ ! -r "${stem}.args" ]; then
  echo "Error: The file ${stem}.args does not exist or is not readable." >&2
  exit 5
fi

if [ ! -f "${stem}.in" ] || [ ! -r "${stem}.in" ]; then
  echo "Error: The file ${stem}.in does not exist or is not readable." >&2
  exit 5
fi

./arithmetic.sh "$(cat ${stem}.args)" < "${stem}.in"

