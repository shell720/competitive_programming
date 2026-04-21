main::IO()
main = do
    b <- getLine
    putStrLn  (if solve b then "Yes" else "No")

solve :: String -> Bool
solve b = 
    all (=='0') c
    where c = [b !! (i - 1) | i <- [1..16], i `mod` 2 == 0]
