-- Where
module Lecture4 where

roots''' a b c =
  let
    x1 = (-b - d) / aTwice
    x2 = (-b + d) / aTwice
    d = sqrt (b ^ 2 - 4 * a * c)
    aTwice = 2 * a
  in (x1, x2)

roots'''' a b c = (x1, x2) where
  x1 = (-b - d) / aTwice
  x2 = (-b + d) / aTwice
  d = sqrt (b ^ 2 - 4 * a * c)
  aTwice = 2 * a

b = (let x = 2 in x^2)^2
-- 16

-- will cause error, because `where` is not an expression
-- (x^2 where x = 2)^2

-- Functions defined in `where` could be used in any | block
factorial7 :: Integer -> Integer
factorial7 n | n >= 0    = helper 1 n
             | n == (-1) = tryBetter
             | otherwise = error "arg must be >= 0"
             where
               tryBetter = error "arg must be >= 0, try better!"
               helper acc 0 = acc
               helper acc n = helper (acc * n) (n - 1)