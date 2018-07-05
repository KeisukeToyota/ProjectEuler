--fib 0 = 0
--fib 1 = 1
--fib n = (memo !! (n-1) + memo !! (n-2))
--memo = [fib x  | x <- [0,1..]]
fib = (map memo [0 ..] !!)
  where
    memo 0 = 0
    memo 1 = 1
    memo n = fib(n-1) + fib(n-2)


fibList n = [x | x <- map fib [1..100], x <= n]
evenList list = filter (\x -> x `mod` 2 == 0) list
evenSumFib n = sum $ evenList $ fibList $ n

main::IO()
main = do
  print $ evenSumFib $ 4000000
  print $ fib 10000