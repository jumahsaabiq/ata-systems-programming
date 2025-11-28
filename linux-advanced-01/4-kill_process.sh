#!/bin/bash

echo "Starting a background sleep process..."
sleep 60 &
SLEEP_PID=$!

echo "Sleep process started with PID: $SLEEP_PID"

echo "Killing process $SLEEP_PID..."
kill "$SLEEP_PID"

# Verify process termination
sleep 1
if ps -p "$SLEEP_PID" > /dev/null; then
    echo "Failed to terminate process $SLEEP_PID."
else
    echo "Process $SLEEP_PID terminated."
fi
