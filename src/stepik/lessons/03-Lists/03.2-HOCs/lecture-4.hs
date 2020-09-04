module Demo where

import Prelude hiding (zipWith, zipWith3)

zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith _ []       _    = []
zipWith _ _        []   = []
zipWith f (x:xs) (y:ys) = f x y : zipWith f xs ys

a = zipWith (+) [1,2] [3,4,5]
-- [4,6]

b = zipWith (,) [1,2] [3,4,5]
-- [(1,3),(2,4)]

zipWith3 :: (a -> b -> c -> d) -> [a] -> [b] -> [c] -> [d]
zipWith3 f (x:xs) (y:ys) (z:zs) = f x y z : zipWith3 f xs ys zs
zipWith3 _ _ _ _                = []