a = map (\x -> negate (abs x)) [5,-3,-6,7,-3,2,-19,24]
same = map (negate . abs) [5,-3,-6,7,-3,2,-19,24]

a1 = map (\xs -> negate (sum (tail xs))) [[1..5],[3..6],[1..7]]
same1 = map (negate . sum . tail) [[1..5],[3..6],[1..7]]