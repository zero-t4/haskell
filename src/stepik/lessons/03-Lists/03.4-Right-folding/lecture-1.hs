module Demo where

import Prelude hiding (foldr)

sumList :: [Integer] -> Integer
sumList []      = 0
sumList (x:xs)  = x + sumList xs

productList :: [Integer] -> Integer
productList [] = 1
productList (x:xs) = x * productList xs

concatList :: [[a]] -> [a]
concatList [] = []
concatList (x:xs) = x ++ concatList xs

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr f ini []     = ini
foldr f ini (x:xs) = x `f` foldr f ini xs

a = sumList [1,2,3]
-- 6

b = foldr (+) 0 [1,2,3]
-- 6
