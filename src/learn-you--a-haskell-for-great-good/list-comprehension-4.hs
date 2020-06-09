[x*2 | x <- [1..10]]
-- [2,4,6,8,10,12,14,16,18,20]

-- list FILTERING: x /= 13 AND x /= 15 AND x /= 19
[ x | x <- [10..20], x /= 13, x /= 15, x /= 19]

-- TWO lists
[ x+y | x <- [2,5,10], y <- [8,10,11]]
--[10,12,13,13,15,16,18,20,21]

let noun = [ "Бродяга", "лягушка", "папа"]
let adj = [ "Ленивый", "ворчливый", "коварный"]

-- List length getter
length' xs = sum [1 | _ <- xs]

leftNonUppercase st = [ c | c <- st, not (c `elem` ['A'..'Z'])]
leftNonUppercase "Nadir" -- "adir"

let xxs = [
  [1,3,5,2,3,1,2,4,5],
  [1,2,3,4,5,6,7,8,9],
  [1,2,4,2,1,6,3,1,3,2,3,6]
]

[
  [ x | x <- xs, even x ] | xs <- xxs
] -- WOW Nested list map
-- [[2,2,4],[2,4,6,8],[2,4,2,6,2,6]]