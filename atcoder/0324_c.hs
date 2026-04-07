import Data.List (group, sort)

main::IO()
main = do
    n <- readLn :: IO Int
    votes <- sequence $ replicate n getLine
    putStrLn . snd . maximum . map(\xs -> (length xs, head xs)) . group .sort $ votes
