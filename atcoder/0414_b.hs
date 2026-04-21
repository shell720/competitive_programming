main::IO()
main = do
    [r, x] <- map read . words <$> getLine
    putStrLn (if isRated r x then "Yes" else "No")

isRated :: Int -> Int -> Bool
isRated r x
    | x == 1 && 1600 <= r && r <= 2999 = True
    | x == 2 && 1200 <= r && r <= 2399 = True
    | otherwise = False
