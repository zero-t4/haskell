-- :t get you type

"HELLO!" :: [Char]
"H" :: Char

[1,2,3] :: Num a => [a]
['a', 'b', 'c', 'd', 'e', 'f'] :: [Char]

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

c :: Float -> Float
c r = 2 * pi * r

-- :: Int -2147483647:2147483647
1
-- :: Integer -∞:∞
10
-- :: Float
25.132742
-- :: Double
25.132741228718345
-- :: Bool
False
-- :: Char
"a"
-- [Tuple]
() :: ()


-- Num is a class constraint
Num a => [a]
