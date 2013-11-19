#!/usr/bin/awk -f
{
  suma += $1
  n += 1
}

END { print suma/n }
