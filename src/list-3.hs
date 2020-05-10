-- defining list
let lostNumbers = [4,8,15,16,23,42]

-- lists concat
[1,2,3,4] ++ [9,10,11,12]

-- strings concat
"hello" ++ "world"
-- [115, 1, 2, 3, 4, 5] much faster concat
115:[1,2,3,4,5]

-- Get list by index
"Abc" !! 0 -- A
"Abc" !! 2 -- c

-- Comparing lists
[3] >= [3] -- True
[3] > [3] -- False
[3] >= [2, 3] -- False


--
head [0, 1, 2, 3] -- 0
tail [0, 1, 2, 3] -- [1, 2, 3]
last [0, 1, 2, 3] -- 3
init [0, 1, 2, 3] -- [0, 1, 2]

length [5,4,3,2,1] -- 5

null [1,2,3] -- False
null [] -- True

reverse [5,4,3,2,1] -- [1,2,3,4,5]

take 3 [5,4,3,2,1] -- [5,4,3]
take 1 [3,9,3] -- [3]
take 5 [1,2] -- [1,2]
take 0 [6,6,6] -- []

drop 2 [1,2] -- [0]
drop 0 [1,2,3] -- [1,2,3]

maximum [1,2,3] -- 3
minimum [1,2,3] -- 1

sum [1,2,3] -- 6

product [6,2,1,2] -- 6*2*1*2 == 24
product [1,2,5,6,7,9,2,0] -- 0

4 `elem` [3,4,5,6] -- True (a.k.a contains)
10 `elem` [3,4,5,6] -- False

[1..10] == [1,2,3,4,5,6,7,8,9,10] -- True

['a'..'c'] -- ['a','b','c']
['a', 'j'..'z'] -- ['a','j','s']

[1..3] -- [1,2,3]
[1,3..6] -- [1,3,5]

[1..] -- infinite list WOW

take 5 [0,100..] -- [0,100,200,300,400]

cycle [1,2,3] -- infinite repeat

cycle [1,2,3] -- infinite repeat

take 11 (cycle "LOL ") -- "LOL LOL LOL"

take 3 (repeat 5) -- [5,5,5]
repeat 3 5 -- [5,5,5]