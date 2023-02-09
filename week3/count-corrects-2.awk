BEGIN {
  FS="."
  sum = 0
  sum_inco=0
}
{ if ($NF == "correct") { sum += 1 }
  }
END {
for (user in correct)
{
  { print user, corrects[user]; }
  }
}