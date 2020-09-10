module Demo where

data Point = Pt Double Double deriving (Show)

origin :: Point
origin = Pt 0.0 0.0

distanceToOrigin :: Point -> Double
distanceToOrigin (Pt x y) = sqrt (x ^ 2 + y ^ 2)

a = distanceToOrigin $ Pt 1.0 2.0
-- 2.23606797749979
