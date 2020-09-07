module Demo where

import Prelude hiding (foldr)

foldr f ini (x:xs) = x `f` foldr f ini xs

sumPositiveSquares :: [Integer] -> Integer
sumPositiveSquares = foldr (\x s -> if x > 0 then x^2 + s else s) 0

a = sumPositiveSquares [1,(-2),3]
-- 10

sumPositiveSquares' :: [Integer] -> Integer
sumPositiveSquares' = foldr f 0 where
  f x s | x > 0     = x^2 + s
        | otherwise = s

b = sumPositiveSquares' [1,(-2),3]
-- 10
