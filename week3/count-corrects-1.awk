#!/usr/bin/awk -f

BEGIN {
  FS="."
  sum = 0
}
{ if ($NF == "correct") { sum += 1 }}
END { print sum}