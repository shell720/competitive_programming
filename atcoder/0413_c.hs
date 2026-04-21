main::IO()
main = do 
    [n, m] <- map read . words <$> getLine
    s <- sequence [getLine | _ <- [1..n]]
    t <- sequence [getLine | _ <- [1..m]]
    print (length (filter (\si -> drop 3 si `elem` t) s))           
    
