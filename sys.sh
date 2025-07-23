#!/bin/bash

services=(postgres ssh cron)

for check in "${services[@]}"; do
	if systemctl is-active --quiet  "$check"; then
    echo "$check is running ✅"
  else
    echo "$check is NOT running ❌"
  fi
done

