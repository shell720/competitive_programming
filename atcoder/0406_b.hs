main::IO()
main = do
    as <- map read . words <$> getLine
    bs <- map read . words <$> getLine
    print (sum as - sum bs + 1)
