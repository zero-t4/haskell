module Demo where

import Prelude hiding (map, concat, concatMap)

map :: (a -> b) -> [a] -> [b]
map _ []     = []
map f (x:xs) = f x : map f xs

a = map length ["aa", "bbb", "cc"]
-- [2,3,2]

concat :: [[a]] -> [a]
concat []       = []
concat (xs:xss) = xs ++ concat xss

b = concat ["Hello", " ", "world", "!"]
-- "Hello world!"

concatMap :: (a -> [b]) -> [a] -> [b]
concatMap f = concat . map f

c = concatMap (\x -> [x,x,x]) "ABCD"
-- "AAABBBCCCDDD"
