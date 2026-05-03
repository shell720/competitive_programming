main::IO()
main = do
    [a, b, c, d] <- map (read::String->Int) . words <$> getLine
    putStrLn( if c<a|| (a==c&& d<b) then "Yes" else "No")
