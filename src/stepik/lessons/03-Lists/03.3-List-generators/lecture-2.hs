module Demo where

import Prelude hiding (repeat, replicate, cycle, iterate)

repeat :: a -> [a]
repeat x = xs where xs = x : xs

a = take 5 $ repeat 'z'
-- "zzzzz"

replicate :: Int -> a -> [a]
replicate n x = take n $ repeat x

b = replicate 5 'z'
-- "zzzzz"

cycle :: [a] -> [a]
cycle [] = error "cycle: empty list"
cycle xs = ys where ys = xs ++ ys

c = take 10 $ cycle [1,2,3]
-- [1,2,3,1,2,3,1,2,3,1]

iterate :: (a -> a) -> a -> [a]
iterate f x = x : iterate f (f x)

d = take 5 $ iterate (^2) 2
-- [2,4,16,256,65536]
