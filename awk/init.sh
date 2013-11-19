#!/bin/sh
ps -ef | awk '$3 == 1 && /wlan0/ {
  for(i = 8; i <= NF; i++){ printf "%s%s", $i, i != NF ? OFS : ORS }
  }'
