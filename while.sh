#!/bin/bash

echo "🔁 DevOps Countdown Timer by Daarwin"
read -p "Enter countdown seconds: " secs

while [ $secs -gt 0 ]
do
  echo "$secs seconds remaining..."
  sleep 1
  secs=$((secs - 1))
done

echo "⏰ Time's up!"

