#!/bin/sh

until /usr/bin/env coffee boris.coffee; do
  echo "Boris crashed with exit code $?. Restarting..." >&2
  sleep 1
done
