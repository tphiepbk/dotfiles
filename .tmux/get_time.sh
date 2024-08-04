#!/bin/bash

if [[ $1 == "hungary" ]]; then
    printf "%s " "$(TZ=":Europe/Budapest" date +'%A, %d/%m/%Y %H:%M:%S')"
elif [[ $1 == "australia" ]]; then
    printf "%s " "$(TZ=":Australia/Melbourne" date +'%A, %d/%m/%Y %H:%M:%S')"
elif [[ $1 == "sweden" ]]; then
    printf "%s " "$(TZ=":Europe/Stockholm" date +'%A, %d/%m/%Y %H:%M:%S')"
else
    printf "%s " "$(TZ=":Asia/Ho_Chi_Minh" date +'%A, %d/%m/%Y %H:%M:%S')"
fi

