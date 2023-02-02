BEGIN {
  FS="."
  sum = 0
  sum_inco=0
}
{ if ($NF == "correct") { sum += 1 }
  if ($NF == "incorrect") { sum += 1}
  }
END { print sum}