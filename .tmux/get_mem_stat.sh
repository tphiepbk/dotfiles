#!/bin/bash

TOTAL_MEM_MB=
TOTAL_MEM_MB=$(top -bn 1 | grep "MiB Mem" | cut -d "," -f 1 | sed 's/[a-zA-Z: ]//g; s/+//g')

get_used_mem () {
    local USED_MEM_MB=
    USED_MEM_MB=$(top -bn 1 | grep "MiB Mem" | cut -d "," -f 3 | sed 's/[a-zA-Z: ]//g; s/+//g')

    local PERCENT_USED
    PERCENT_USED=$(printf "%.0f" "$(echo "scale=2; $USED_MEM_MB / $TOTAL_MEM_MB * 100" | bc -l)")

    echo "${USED_MEM_MB}M/${TOTAL_MEM_MB}M ($PERCENT_USED%)"
}

get_free_mem () {
    local FREE_MEM_MB=
    FREE_MEM_MB=$(top -bn 1 | grep "MiB Mem" | cut -d "," -f 2 | sed 's/[a-zA-Z: ]//g; s/+//g')

    local PERCENT_FREE=
    PERCENT_FREE=$(echo "scale=2; $FREE_MEM_MB / $TOTAL_MEM_MB * 100" | bc -l)

    echo "${FREE_MEM_MB}M/${TOTAL_MEM_MB}M ($PERCENT_FREE%)"
}

OPTS="$1"

used_mem_part=
used_mem_part=$(get_used_mem)

free_mem_part=
free_mem_part=$(get_free_mem)

if [[ "$OPTS" == "free" ]]; then
    echo "${free_mem_part}"
elif [[ "$OPTS" == "used" ]]; then
    echo "${used_mem_part}"
else
    echo "${TOTAL_MEM_MB} MB"
fi

