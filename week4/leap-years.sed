#!/bin/sed -nf

/^[0-9]*[02468][048]00$\|^[0-9]*[02468][^048]$/p;
d;