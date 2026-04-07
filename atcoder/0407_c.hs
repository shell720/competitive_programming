import Data.List (group)

main::IO()
main = do
    [n, k] <- map read . words <$> getLine
    s <- getLine
    --putStrLn (show (countk k s))
    print (solve k s)

countk :: Int -> String -> Int
-- sを'o'の連続する部分をグループ化して、kで割った商に変換して、その合計を返す
countk k s = sum . map (\g -> length g `div` k) . filter (\g -> head g == 'O') . group $ s

solve :: Int -> String -> Int
solve k [] = 0
solve k s 
    | length s < k = 0
    | all (== 'O') (take k s) = 1 + solve k (drop k s)
    | otherwise = solve k (tail s)
