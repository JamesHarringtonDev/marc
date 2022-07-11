#!/bin/bash

args=()
while IFS= read -r line; do
    args+=("$line")
done < fragmentOrdering

echo "${args[@]}"
