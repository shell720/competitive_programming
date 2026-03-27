main :: IO()
main = do
    [v, a, b, c] <- map(read :: String -> Int). words <$> getLine
    putStrLn $ whoRunsOut(v `mod` (a+b+c)) [("F", a),("M", b), ("T", c)]

whoRunsOut :: Int -> [(String, Int)] -> String
whoRunsOut _ [] = error "unreachable"
whoRunsOut v ((name, x): xs)
    | v<x  = name
    | otherwise = whoRunsOut (v-x) xs
