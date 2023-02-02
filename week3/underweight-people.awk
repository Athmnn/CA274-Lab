#!/usr/bin/awk -f

BEGIN {
  FS = ","
}
{ if (($2/(($1/100)*($1/100))) < 18.5)  { print $1 "," $2} }