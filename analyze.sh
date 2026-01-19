#!/bin/bash
TARGET_FILE=$1

echo "error count---------------------"
grep "ERROR" "$TARGET_FILE"|wc -l

echo "--------------------------------"

echo "ERROR FREQUENCY"
grep "ERROR" "$TARGET_FILE"|sed 's/ERROR [ ]*//g'|sort|uniq -c

echo "DONE AS DIRECTED"

