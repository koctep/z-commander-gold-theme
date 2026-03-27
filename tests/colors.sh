#!/usr/bin/env bash
# Comments should render in the comment color.
# Numbers should render in dark pink.

set -euo pipefail

readonly TITLE="Commander Gold"
readonly RETRIES=3
readonly TIMEOUT=42
readonly HEX_VALUE=0xff

format_sample() {
  local name="$1"
  local count="$2"

  if [[ "$count" -gt 0 ]]; then
    echo "${name}:${count}:${TIMEOUT}:${HEX_VALUE}"
  else
    echo "inactive"
  fi
}

printf '%s\n' "$(format_sample "$TITLE" "$RETRIES")"
