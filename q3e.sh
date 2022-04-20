#!/bin/bash
cat $1 | tr '[:punct:]' ' ' | tr -s ' ' | tr ' ' '\n' | sort | uniq -c | sort -rn | awk '{print "Word: <"$2">-Count of repetation:["$1"] "}' | grep -v "Word: <>"