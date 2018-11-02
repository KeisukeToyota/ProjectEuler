isDivisible::Int -> Bool
isDivisible n = all (==True) [n `mod` x == 0 | x <- [11..20]]

main::IO()
main = do
  print $ (2+) $ maximum $ takeWhile (\x -> not $ isDivisible(x)) [x | x <- [2520,2522..]]
