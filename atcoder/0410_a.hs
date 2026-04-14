main::IO()
main  = do
    n <- read <$>getLine
    s <- getLine
    putStrLn (if drop (n-3) s == "tea" then "Yes" else "No")
