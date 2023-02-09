#!/usr/bin/sed -f

/\.correct$/{
    s/\.correct$//
    s/\.CA274$//
    p;
}
d