#!/usr/bin/awk -f

BEGIN {
  FS="/"
  temp[FNR]=$1
}

{ split($NF,tmp, "."); }
{if (tmp[3] && (temp[tmp[1]] != 1)) {print tmp[1] "." tmp[2]; temp[tmp[1]] = 1} }