main::IO()
main = do
    [a, b, c, d] <- map read . words <$> getLine
    print ((a+b)*(c-d)::Integer)
    putStrLn "Takahashi"
