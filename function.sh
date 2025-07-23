#!/bin/bash

check_server() {
  server=$1
  echo "Checking $server..."

  if ping -c 2 "$server" > /dev/null 2>&1
  then
    echo "$(date) - $server is reachable ✅"
  else
    echo "$(date) - $server is NOT reachable ❌"
  fi
}

# Call the function with multiple servers
for host in google.com github.com invalid.domain
do
  check_server "$host"
done

echo "Results shows"

