#!/usr/bin/awk -f

BEGIN {
  FS = ","
}
{ sum += $1 }
END { if (NR > 0) print sum / NR }