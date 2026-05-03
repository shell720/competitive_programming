main::IO()
main = do
    s <- getLine
    print (daytillSaturday s)

daytillSaturday :: String -> Int
daytillSaturday s 
    | s == "Monday" = 5
    | s == "Tuesday" = 4
    | s == "Wednesday" = 3
    | s == "Thursday" = 2
    | s == "Friday" = 1
    | otherwise = 0
