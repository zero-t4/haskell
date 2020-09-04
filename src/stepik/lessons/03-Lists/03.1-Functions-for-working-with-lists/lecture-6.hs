module Demo where

import Prelude hiding (take, drop, splitAt, (!!))

take :: Int -> [a] -> [a]
take n _
  | n <= 0             = []
take _ []              = []
take n (x:xs)          = x : take (n-1) xs

a = take 2 "sdfsdf"
-- "sd"
b = take 22 "sdfsdf"
-- "sdfsdf"

drop :: Int -> [a] -> [a]
drop n xs
  |         n <= 0 = xs
drop _ []          = []
drop n (x:xs)      = drop (n-1) xs

c = drop 4 "ABCDEFGHIJKLMNOPQRSTUVWXY"
-- "EFGHIJKLMNOPQRSTUVWXY"


splitAt :: Int -> [a] -> ([a],[a])
splitAt x xs = (take x xs, drop x xs)
d = splitAt 5 "123456789"
-- ("12345","6789")

xs     !! n | n < 0 = error "Prelude.!!: negative index"
[]     !! _         = error "Prelude.!!: index too large"
(x:_)  !! 0         = x
(_:xs) !! n         = xs !! (n-1)

e = [1,2,3,4,5] !! 3
-- 4