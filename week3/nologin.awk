#!/usr/bin/awk -f

BEGIN {
  FS=":"
}

{ if ($NF == "/usr/sbin/nologin") { print $1} /etc/passwd}