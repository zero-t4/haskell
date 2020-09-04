module Demo where

import Prelude hiding (zip, zip3, unzip)

zip :: [a] -> [b] -> [(a,b)]
zip []     _      = []
zip _      []     = []
zip (a:as) (b:bs) = (a,b) : zip as bs

a = zip [1,2,3] "DFSDF"
-- [(1,'D'),(2,'F'),(3,'S')]

zip3 :: [a] -> [b] -> [c] -> [(a,b,c)]
zip3 (a:as) (b:bs) (c:cs) = (a,b,c) : zip3 as bs cs
zip3 _ _ _                = []

unzip :: [(a,b)] -> ([a], [b])
unzip []            = ([],[])
unzip ((x,y): xys) =
  let (xs,ys) = unzip xys
  in (x:xs,y:ys)

b = unzip [(1,'D'),(2,'F'),(3,'S')]
-- ([1,2,3],"DFS")

