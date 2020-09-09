module Demo where

intToChar :: Int -> Char
intToChar 0 = '0'
intToChar 1 = '1'
intToChar 2 = '2'
intToChar 3 = '3'
intToChar 4 = '4'
intToChar 5 = '5'
intToChar 6 = '6'
intToChar 7 = '7'
intToChar 8 = '8'
intToChar 9 = '9'
intToChar _ = 'N'

isz :: Char -> Bool
isz 'z' = True
isz _   = False

stringToBool :: String -> Bool
stringToBool "true"  = True
stringToBool "false" = False