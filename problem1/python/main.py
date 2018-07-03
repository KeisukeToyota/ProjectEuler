import sys
sys.setrecursionlimit(10000)

def f(n):
  if n == 0:
   return 0
  elif n % 3 == 0:
    return n + f(n-1)
  elif n % 5 == 0:
    return n + f(n-1)
  return f(n-1)

print(f(999))
