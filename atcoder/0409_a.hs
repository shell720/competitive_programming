main::IO()
main = do
    n <- read  <$> getLine
    print (2^n)
