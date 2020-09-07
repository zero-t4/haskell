module Demo where

import Prelude hiding (foldr1, foldl1, maximum)

foldr1 :: (a -> a -> a) -> [a] -> a
foldr1 _ [x]    = x
foldr1 f (x:xs) = f x $ foldr1 f xs
foldr1 _ []     = error "foldr1: empty list"

foldl1 :: (a -> a -> a) -> [a] -> a
foldl1 f (x:xs) = foldl f x xs
foldl1 _ []     = error "foldl1: empty list"

maximum :: (Ord a) => [a] -> a
maximum = foldl1 max

maximum' :: (Ord a) => [a] -> a
maximum' = foldl1 max