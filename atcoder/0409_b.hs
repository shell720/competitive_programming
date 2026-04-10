main::IO()
main = do
    s <- getLine
    let a = read [s!!0] :: Int
    let b = read [s!!2] :: Int
    print(a*b)
