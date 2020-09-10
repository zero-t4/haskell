{-|
  Реализуйте функцию distance, возвращающую расстояние между двумя точками.
-}

data Point = Point Double Double

distance :: Point -> Point -> Double
distance (Point x y) (Point x2 y2) = sqrt ((x2 - x) ^ 2 +  (y2 - y) ^ 2)