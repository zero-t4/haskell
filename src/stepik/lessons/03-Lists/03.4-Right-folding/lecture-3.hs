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

{-|
foldr f ini 1:2:3:[]
  ~> 1 `f` foldr f ini (2:3:[])
  ~> 1 `f` (2 `f` foldr f ini (3:[]))
  ~> 1 `f` (2 `f` (3 `f` foldr f ini []))
  ~> 1 `f` (2 `f` (3 `f` ini))
-}

a = foldr (-) 5 [1,2,3]
-- (1 - (2 - (3 - 5)))
-- (-3)
