main::IO()
main = do
    n <- (read::String->Int) <$> getLine
    s <- getLine
    putStrLn (if all (\(a,b) -> a/=b) (zip s (tail s)) then "Yes" else "No")

