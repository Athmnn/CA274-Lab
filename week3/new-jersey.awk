#!/usr/bin/awk -f
BEGIN {
  FS=","
}

{ if ($3 == "New Jersey") { print $1}}