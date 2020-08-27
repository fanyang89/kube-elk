#!/usr/bin/env bash

set -euo pipefail

find ./ -name "*yaml" | xargs cat | grep 'image:' | awk '{print $2}' | sort | uniq
