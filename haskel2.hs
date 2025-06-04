onlyEven :: [Int] -> [Int]
onlyEven [] = []
onlyEven (x:xs)
  | even x    = x : onlyEven xs
  | otherwise = onlyEven xs

doubleAll :: [Int] -> [Int]
doubleAll [] = []
doubleAll (x:xs) = (x * 2) : doubleAll xs

sumOfDigits :: Int -> Int
sumOfDigits n
  | n < 0     = sumOfDigits (-n)  
  | n < 10    = n                 
  | otherwise = (n `mod` 10) + sumOfDigits (n `div` 10)

main :: IO ()
main =  do
  let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  
  putStrLn "Lista wejściowa:"
  print numbers
  
  putStrLn "\nTylko liczby parzyste:"
  print $ onlyEven numbers
  
  putStrLn "\nLista wejściowa:"
  print numbers
  
  putStrLn "\nPodwojone liczby:"
  print $ doubleAll numbers
  
  putStrLn "\nSuma Cyfr:"
  print $ sumOfDigits (-2137)
