main::IO()
main = do
    _ <- getLine
    p1:ps <- map read . words <$> getLine
    if null ps 
        then print 0
        else print (max 0 (maximum ps + 1 - p1))
