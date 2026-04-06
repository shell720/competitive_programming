main::IO()
main = do
    _ <- getLine
    s <- getLine
    putStrLn (if posses s then "Yes" else "No")

posses :: String -> Bool
posses s = any (== 'o') s && not (any (== 'x') s)
