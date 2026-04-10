main::IO()
main = do
    n <- read <$> getLine
    print(output(n))

output :: Int -> Int
output n
    | n<=999  = n
    | n<=9999  = (n `div` 10) * 10
    | n <= 99999 = (n `div` 100) * 100
    | n <= 999999 = (n `div` 1000) * 1000
    | n <= 9999999 = (n `div` 10000) * 10000
    | n <= 99999999 = (n `div` 100000) * 100000
    | n <= 999999999 = (n `div` 1000000) * 1000000
    | otherwise = n
-- output n = (n `div` d)*d where d = 10^ max 0 (length (show n)-3)
