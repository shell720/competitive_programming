main :: IO ()
main = do
    n <- readLn::IO Int
    people <- mapM(\_ -> do
        [s, a] <- words <$> getLine
        return (s, read a :: Int)) [1..n]
    let ans = solve people
    mapM_ putStrLn ans

solve::[(String, Int)] -> [String]
solve people =
    let minAge = minimum(map snd people)
        minIdx = head [i | (i, (_, a)) <- zip [0..] people, a == minAge]
        rotated = drop minIdx people ++ take minIdx people
    in map fst rotated
