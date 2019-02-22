func1::[Int] -> Int
func1 = sum . map (^2)

func2::[Int] -> Int
func2 = (^2) . sum

func3::[Int] -> Int
func3 = foldr (-) 0 . (\x -> map (\f -> f x) [func2, func1])

main::IO()
main = do
  print $ func3 [1..100]

