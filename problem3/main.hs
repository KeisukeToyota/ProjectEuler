primes::Int -> [Int]
primes 1 = []
primes n = x : primes (n `div` x)
  where
    factors n = [x | x <- [1..n], n `mod` x == 0]
    x = (factors n) !! 1

gcdPrime::Int -> Int
gcdPrime n = maximum $ primes n

main::IO()
main = do
  print $ gcdPrime 600851475143