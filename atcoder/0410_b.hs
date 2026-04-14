main::IO()
main = do
    [s, a, b, x] <- map read . words <$> getLine
    let ans = solve s a b x
    print (ans)

solve :: Int -> Int -> Int -> Int -> Int
solve s a b x = 
    let d = x `div` (a + b)
        r = x `mod` (a + b)
    in s * (d * a + min r a)
