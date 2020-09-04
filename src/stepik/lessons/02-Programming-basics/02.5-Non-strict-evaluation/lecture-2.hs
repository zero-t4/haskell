add7 :: Int -> Int -> Int
add7 x y = x + 7

{-|
-- Lazy evaluation
-- more effective here
add7 1 (2 + 3)
  ~> 1 + 7
  ~> 8

-- Eager evaluation
add7 1 (2 + 3)
  ~> add7 1 5
  ~> 1 + 7
  ~> 8
-}

dup :: Int -> (Int,Int)
dup x = (x,x)

{-|
-- Lazy evaluation
-- less effective here
dup (2+3)
  ~> (2+3, 2+3)
  ~> (5, 2+3)
  ~> (5, 5)

-- Eager evaluation
-- more effective here
dup (2+3)
  ~> dup 5
  ~> (5, 5)
-}