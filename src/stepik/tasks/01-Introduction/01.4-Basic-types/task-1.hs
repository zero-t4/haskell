{-|
  Какие из следующих выражений типизированы верно, то есть не приводят к ошибкам типа?
-}

-- correct1: (3 :: Integer)   + (5 :: Integer)
-- correct2: (3.2 :: Double)  + (5 :: Double)
-- wrong1:   3 :: Double)     + (5 :: Float)
-- wrong2:   (3.0 :: Integer) + (5 :: Integer)
-- wrong3:   (3 :: Int)       + (5 :: Integer)