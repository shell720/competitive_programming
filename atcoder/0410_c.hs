main::IO()
main = do
    [n, m ]<- map read . words <$> getLine
    childs <- sequence (replicate m (words <$> getLine))
    mapM_ putStrLn (solve childs)

solve :: [[String]] -> [String]
solve childs = reverse ( snd (foldl step ([], []) childs)) 
  where 
    step (seen, results) child = (seen', result: results)
      where 
        (seen', result) = judge seen child

judge :: [String] -> [String] -> ([String],String)
judge seen [a, b]
    | b == "M" && notElem a seen = (a:seen, "Yes")
    | otherwise = (seen, "No")
judge seen _ = (seen, "No")
