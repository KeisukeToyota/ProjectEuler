main::IO()
main = do
  let x1 = sum $ map (^2) [1..100]
  let x2 = sum [1..100] ^ 2
  print $ x2 - x1
