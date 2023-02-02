#!/usr/bin/awk -f

BEGIN {
  FS = ","
}
{ if ($2 < 55) { print $1 "," $2} }