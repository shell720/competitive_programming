main::IO()
main = do
    s <- getLine
    let n = read (drop 3 s) :: Int
    putStrLn (if 1<=n && n <= 350 && n/=316 then "Yes" else "No")
