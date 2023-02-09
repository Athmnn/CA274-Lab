BEGIN {
     FS = "," 
}
{
if ($1 > max) { max = $1; city = $2 }
}
END { print city }