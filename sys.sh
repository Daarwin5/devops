#!/bin/bash

services=(postgres ssh cron)

for check in "${services[@]}"; do
	if systemctl is-active --quiet  "$check"; then
    echo "$check is running perfect ✅"
  else
    echo "$check is NOT running perfect ❌"
  fi
done

