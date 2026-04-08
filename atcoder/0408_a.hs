main::IO()
main = do
    [a, b] <- map read . words <$> getLine
    print (32 ^ (a-b) :: Integer)
