main::IO()
main = do
    [x, y] <- map read . words <$> getLine
    putStrLn (if solve x y then "Yes" else "No")

solve :: Int -> Int -> Bool
solve x y
    | 0 < y-x && y-x < 3 = True
    | 0< x-y && x-y < 4 = True
    | otherwise = False
