import Data.List (isSubsequenceOf)

main::IO()
main = do
    [n, _] <- readInts <$> getLine
    products <- mapM (\_ -> parseProduct <$> getLine) [1..n]
    putStrLn (if hasSuperior products then "Yes" else "No")

readInts :: String -> [Int] 
readInts = map read .words

parseProduct :: String -> (Int, [Int])
parseProduct line = (p, fs) where (p : _ : fs) = readInts line

hasSuperior :: [(Int, [Int])] -> Bool
hasSuperior products = any (uncurry isSuperior) pairs where
    pairs = [(x,y) | x<-products, y<-products, x/=y]

isSuperior :: (Int, [Int]) -> (Int, [Int]) -> Bool
isSuperior (pi_, fi) (pj, fj) = pi_ >= pj && fi `isSubsequenceOf` fj && (pi_ > pj || fi /= fj)
