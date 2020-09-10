module Demo where

rootsOld :: Double -> Double -> Double -> (Double, Double)
rootsOld a b c = (x1, x2) where
  x1 = helper (-d)
  x2 = helper d
  helper x = (-b + x) / (2 * a)
  d = sqrt (discr)
  discr = b ^ 2 - 4 * a * c

a = rootsOld 1 1 6
-- (NaN, NaN)

data Roots = Roots Double Double | None
  deriving Show

roots :: Double -> Double -> Double -> Roots
roots a b c
  | discr >=0  = Roots x1 x2
  | otherwise  = None
  where
    x1 = helper (-d)
    x2 = helper d
    helper x = (-b + x) / (2 * a)
    d = sqrt (discr)
    discr = b ^ 2 - 4 * a * c
b = roots 1 1 6
-- None

c = roots 1 (-5) 6
-- Roots 2.0 3.0

