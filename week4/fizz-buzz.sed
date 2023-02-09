#!/usr/bin/sed -f

/^[0-9]*[50]$/{
    3~3 {
        s/.*/fizz-buzz/p;
        d
    }
    s/.*/buzz/p;
    d
}

3~3 {
    s/.*/fizz/p;
    d
}

p

d