import Data.List (group)
main::IO()
main = do
    n <- read <$> getLine
    doors <- map read . words <$> getLine
    print (solve n doors)

solve :: Int -> [Int] -> Int
solve n doors = 
    max 0 (n - 1 - fromleft - fromright)
      where fromleft = length (takeWhile (\x -> x==0) doors)
            fromright = length (takeWhile (\x -> x==0) (reverse doors))


solve2 :: Int -> [Int] -> Int
solve2 n doors = 
    n - 1 - fromleft - fromright
      where fromleft = if head (head gs)==0 then length (head gs) else 0
            fromright = if head (last gs)==0 then length (last gs) else 0
            gs = group doors
