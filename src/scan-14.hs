-- scanl and scanr are like foldl and foldr
-- but they return a list instead of one result element

a = scanl (+) 0 [3,5,2,1]
-- [0,3,8,10,11]
b = scanr (+) 0 [3,5,2,1]
-- [11,8,3,1,0]
c = scanl1 (\acc x -> if x > acc then x else acc) [3,4,5,3,7,9,2,1]
-- [3,4,5,5,7,9,9,9]
d = scanl (flip (:)) [] [3,2,1]
-- [[],[3],[2,3],[1,2,3]]