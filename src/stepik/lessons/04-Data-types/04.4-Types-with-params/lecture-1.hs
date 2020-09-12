module Demo where

data CoordD = CoordD Double Double

data CoordI = CoordI Int Int

data Coord a = Coord a a

a = Coord (3::Int) (4::Int)
-- :t a
-- a :: Coord Int


b = Coord (3.5::Double) (4::Double)
-- :t b
-- b :: Coord Double
