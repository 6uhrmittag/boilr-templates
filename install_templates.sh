#!/usr/bin/env bash

for template in *; do
    if [ -d "$template" ]; then
        boilr template save "$template" "$template"  -f
    fi
done

boilr template list
