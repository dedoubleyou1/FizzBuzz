fizzBuzz :: Int -> String
fizzBuzz thisNumber
    | thisNumber `mod` 15 == 0 = "FizzBuzz"
    | thisNumber `mod` 3 == 0  = "Fizz"
    | thisNumber `mod` 5 == 0  = "Buzz"
    | otherwise                = show thisNumber


outputFormat :: [String] -> String
outputFormat thisString = concat (map (++ ['\n']) thisString)


main = putStr (outputFormat (map fizzBuzz [1..100]))

-- Alternative
main = mapM_ (putStrLn . fizzBuzz) [1..100]
fizzBuzz x
  | x `mod` 15 == 0 = "FizzBuzz"
  | x `mod` 3 == 0 = "Fizz"
  | x `mod` 5 == 0 = "Buzz"
  | otherwise = show x
