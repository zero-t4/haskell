-- Take first tuple element
fst (8,11) -- 8
fst ("Wow", False) -- "Wow"

-- Second
snd (8,11) -- 11
snd ("Wow", False) -- False

zip [1..10] ["im","a","turtle"]
-- [(1,"im"),(2,"a"),(3,"turtle")]

-- Getting all possible solutions for combination of 1 to 10 in 3 dimensions
sizes = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b]]

-- Filter by right triangle
rightTriangles = [
  (a,b,c) | c <- [1..10],
  b <- [1..c],
  a <- [1..b],
  a^2 + b^2 == c^2,
]

-- Filter by right triangle with size 12
specificRightTriangle = [
  (a,b,c) | c <- [1..10],
  b <- [1..c],
  a <- [1..b],
  a^2 + b^2 == c^2,
  a + b + c == 12
]