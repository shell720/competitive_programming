import Data.Maybe (fromJust)
main::IO()
main = do
    [start, goal] <- words <$> getLine
    print (distance start goal)

distance :: String -> String -> Int
distance s g = 
    abs (fromJust (lookup s places) - fromJust (lookup g places))
    where places = [("A", 0), ("B", 3), ("C", 4), ("D", 8), ("E", 9), ("F", 14), ("G", 23)]
