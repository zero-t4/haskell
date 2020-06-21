module Demo where

factorial n = if n == 0 then 1 else n * factorial (n - 1)

{-
factorial 2
  ~> if 2 == 0 then 1 else 2 * factorial 1
  ~> 2 * factorial 1
  ~> 2 * (if 1 == 0 then 1 else 1 * factorial 0)
  ~> 2 * 1 * factorial 0
  ~> 2 * factorial 0
  ~> 2 * (if 0 == 0 then 1 else 0 *  factorial (-1))
  ~> 2 * 1
  ~> 2
-}