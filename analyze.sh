#!/usr/bin/env bash

TARGET_FILE=$1
LOG_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_FILE=$LOG_DIR/report.txt

if [[ -z "$TARGET_FILE" || ! -f "$TARGET_FILE" ]]; then
  echo "Usage: $0 <log_file>"
  exit 1
fi
echo "error count---------------------" > "$LOG_FILE"
grep -w "ERROR" "$TARGET_FILE"|wc -l > "$LOG_FILE"

echo "--------------------------------" > "$LOG_FILE"

echo "ERROR FREQUENCY" > "$LOG_FILE"
grep -w "ERROR" "$TARGET_FILE"|sed 's/ERROR [ ]*//g'|sort|uniq -c|sort -n > "$LOG_FILE"

echo "DONE AS DIRECTED" > "$LOG_FILE"

