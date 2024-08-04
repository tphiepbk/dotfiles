#!/bin/bash

PERCENT_FREE=
PERCENT_FREE=$(top -bn 1 | grep "%Cpu(s):" | cut -d "," -f 4 | sed 's/[a-z ]*//g')

PERCENT_USED=
PERCENT_USED=$(echo "scale=2; 100 - ${PERCENT_FREE}" | bc -l)

OPTS="$1"

if [[ "$OPTS" == "free" ]]; then
    echo "${PERCENT_FREE}%"
else
    echo "${PERCENT_USED}%"
fi

