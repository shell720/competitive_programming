import Data.List (group, sort)

main::IO()
main = do
    t <- map (read :: String -> Int) . words <$> getLine
    print (length (group (sort t)))
