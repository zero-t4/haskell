{-|
@Normal Form, no more computations are made
  42
  (3,4)
  \x -> x + 2

@Not Normal Form, computations could be made
  "Real" ++ " World"
  sin (px / 2)
  (\x -> x + 2) 5
  (3, 1 + 5)

@Weak Head Normal Form
\x -> x + 2 * 3
(3, 1+5)
(,) (4*5)
(+) (7^2)
-}