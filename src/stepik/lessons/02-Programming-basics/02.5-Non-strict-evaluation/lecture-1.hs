module Demo where

sumIt :: Int -> Int -> Int
sumIt x y = x + y

{-|
-- Lazy evaluation
sumIt (2 + 3) 4
  ~> (2 + 3) + 4
  ~> 5 + 4
  ~> 9

-- Eager evaluation
sumIt (2 + 3) 4
  ~> sumIt 5 4
  ~> 5 + 4
  ~> 9
-}