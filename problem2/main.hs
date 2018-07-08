fib::Int -> Int
fib = (map memo [0..] !!)
  where
    memo 0 = 0
    memo 1 = 1
    memo n = fib(n-1) + fib(n-2)

fibList::Int -> [Int]
fibList n = takeWhile (<=n) [x | x <- map fib [0..]]

evenList::[Int] -> [Int]
evenList list = filter even list

evenSumFib::Int -> Int
evenSumFib n = sum $ evenList $ fibList $ n

main::IO()
main = do
  print $ evenSumFib 4000000
