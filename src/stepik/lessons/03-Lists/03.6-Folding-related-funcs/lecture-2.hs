module Demo where

import Prelude hiding (foldl, scanl)

foldl :: (b -> a -> b) -> b -> [a] -> b
foldl f ini []      = ini
foldl f ini (x:xs)  = foldl f (f ini x) xs

{-|
  foldl f ini [1,2,3] ->> ((ini `f` 1) `f` 2) `f` 3

  ??? ->> [ini, ini `f` 1, (ini `f` 1) `f` 2, ((ini `f` 1) `f` 2) `f` 3]
-}

scanl :: (b -> a -> b) -> b -> [a] -> [b]
scanl f ini []     = [ini]
scanl f ini (x:xs) = ini : scanl f (ini `f` x) xs

a = scanl (*) 1 [1..10]
-- [1,1,2,6,24,120,720,5040,40320,362880]
