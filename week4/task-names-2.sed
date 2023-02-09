#!/usr/bin/sed -f

/\.correct$/{
    s/\.correct$//
    p;
}
d