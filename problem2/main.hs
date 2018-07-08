--fib = (map memo [0..] !!)
--  where
--    memo 0 = 0
--    memo 1 = 1
--    memo n = fib(n-1) + fib(n-2)

fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

fibList n = takeWhile (<=n) [x | x <- map fib [0..]]
evenList list = filter (\x -> x `rem` 2 == 0) list
evenSumFib n = sum $ evenList $ fibList $ n

main::IO()
main = do
  print $ evenSumFib 4000000
