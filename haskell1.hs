-- Zadanie 5
fibonacci :: Integer -> Integer
fibonacci x
  | x == 0 = 0
  | x == 1 = 1
  | x > 1 = fibonacci(x-1)+fibonacci(x-2)

-- Zadanie 6
minmax :: Integer -> Integer -> Integer -> Integer
minmax x y z  = maximum [x, y, z] - minimum [x, y, z]

-- Zadanie 7
square :: Integer -> Integer
square x = (*) x x

sumOfSquares :: Integer -> Integer -> Integer
sumOfSquares x y = (square x) + (square y)

main :: IO ()
main =  do
  putStr "Fibonacci: "
  print(fibonacci 7)
  putStr "Roznica miedzy najwieksza i najmniejsa liczba z trzech liczb x y z: "
  print(minmax 7 1 4)
  putStr "Suma kwadratow x y = "
  print(sumOfSquares 3 4)
