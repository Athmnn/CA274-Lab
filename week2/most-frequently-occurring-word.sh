#!/bin/sh

grep -o -w "\w{4}" $1 | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}'