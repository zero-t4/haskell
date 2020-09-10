module Demo where

import Data.Ratio

data Shape = Circle Double | Rectangle Double Double
  deriving Show

square :: Double -> Shape
square a = Rectangle a a

{-|
code below won't work
  isSquare :: Shape -> Bool
  isSquare (square _) = True
  isSquare _          = False
-}

a = 2 % 3
-- 2 % 3

b = 2 % 3 + 1 % 6
-- 5 % 6
