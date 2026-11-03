#!/bin/bash

compare_checksums() {
    local checksum1="$1"
    local checksum2="$2"

    if [[ "$checksum1" == "$checksum2" ]]; then
        echo "Checksums match. file is valid."
        else
        echo "Checksums do not match. file is invalid."
    fi

} 

compare_checksums "12345" "12345"