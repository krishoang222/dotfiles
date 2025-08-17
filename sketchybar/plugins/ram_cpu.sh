#!/bin/bash

# Function to get CPU usage %
get_cpu_usage() {
  # Get overall CPU usage percentage using top or ps command
  cpu_usage=$(top -l 1 -n 0 | grep "CPU usage" | awk '{print $3}' | sed 's/%//')
  echo "$cpu_usage%"

  # Get CPU idle percentage from top, then subtract from 100 to get usage%
  # cpu_idle=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/")
  # cpu_usage=$(echo "100 - $cpu_idle" | bc)
}

# Function to get RAM usage %
get_ram_usage() {
  # Get memory usage stats and calculate used RAM percentage
  mem_used=$(vm_stat | grep 'Pages active' | awk '{print $3}' | sed 's/\.//')
  mem_inactive=$(vm_stat | grep 'Pages inactive' | awk '{print $3}' | sed 's/\.//')
  mem_wired=$(vm_stat | grep 'Pages wired down' | awk '{print $4}' | sed 's/\.//')
  mem_free=$(vm_stat | grep 'Pages free' | awk '{print $3}' | sed 's/\.//')

  # Sum used pages
  used_pages=$((mem_used + mem_inactive + mem_wired))
  total_pages=$((used_pages + mem_free))

  mem_used_percent=$((used_pages * 100 / total_pages))

  echo "${mem_used_percent}%"
}


cpu=$(get_cpu_usage)
ram=$(get_ram_usage)

sketchybar --set "$NAME" label="CPU: ${cpu} RAM: ${ram}"
