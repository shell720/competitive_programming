main::IO()
main = do
    [n, m] <- map read . words <$> getLine
    solvelists <-  sequence $ replicate n getLine
    print (countPairs solvelists)

countPairs :: [String] -> Int
-- pairで2つの要素を取り出して、&をとって、全てoのリストの合計を求める
countPairs s = length . filter canSolveAll $ pairs s
--countPairs s = length . filter conSolveAll (pairs ss)

pairs :: [a] -> [(a, a)]
pairs [] = []
pairs (x:xs) = map (\y -> (x, y)) xs ++ pairs xs

canSolveAll :: (String, String) -> Bool
canSolveAll (s1, s2) =  all (\(c1, c2) -> c1 == 'o' || c2 == 'o') (zip s1 s2)
