-- Apply operation without declaring variables;

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A'..'Z'])


applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

a = applyTwice (+3) 10
-- 16
b = applyTwice (++ " HAHA") "HEY"
-- "HEY HAHA HAHA"
c = applyTwice ("HAHA " ++) "HEY"
-- "HAHA HAHA HEY"
e = applyTwice (3:) [1]
-- [3,3,1]

-- Passing transform function
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

f = zipWith' (+) [4,2,5,6] [2,6,2,3]
-- [6,8,7,9]
g = zipWith' max [6,3,2,1] [7,3,1,5]
-- [7,3,2,5]
h = zipWith' (++) ["foo ", "bar ", "baz "] ["fighters", "hoppers", "aldrin"]
-- ["foo fighters","bar hoppers","baz aldrin"]
i = zipWith' (*) (replicate 5 2) [1..]
-- [2,4,6,8,10]
j = zipWith' (zipWith' (*)) [[1,2,3],[3,5,6],[2,3,4]] [[3,2,2],[3,4,5],[5,4,3]]
-- [[3,4,6],[9,20,30],[10,12,12]]


map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x       = x : filter' p xs
    | otherwise = filter' p xs


largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000,99999..])
    where p x = x `mod` 3829 == 0

largestDivisible' = let p x = mod x 3829 == 0 in (head (filter p [100000,99999..]))
-- the same


-- take sum of all squared odd numbers from 1 to infinity below 10k
a' = sum (takeWhile (<10000) (filter odd (map (^2) [1..])))
--squared map
b' = map (^2) [1..]
-- filter odd numbers
c' = filter odd (map (^2) [1..])
-- take numbers below 10k
d' = takeWhile (<10000) (filter odd (map (^2) [1..]))
-- sum them
e' = sum (takeWhile (<10000) (filter odd (map (^2) [1..])))

byListComprehension = sum (takeWhile (<10000) [n^2 | n <- [1..], odd (n^2)])

getCollatzSequence :: (Integral a) => a -> [a]
getCollatzSequence 1 = [1]
getCollatzSequence n
    | even n =  n : getCollatzSequence (n `div` 2)
    | odd n  =  n : getCollatzSequence (n*3 + 1)

-- for all starting numbers between 1 and 100, how many chains have a length greater than 15
num :: Int
num = length (filter isLengthGt15 (map getCollatzSequence [1..100]))
  where isLengthGt15 xs = length xs > 15
-- 66

-- WOW, this will produce list of partially applied functions!
-- like so [[(0*),(1*),(2*),(3*),(4*),(5*)..
a = map (*) [0..]
(a ! 10) 2
-- 100


-- partially applied exponentiation
b = map (^2)
b [1..10]
-- [1,4,9,16,25,36,49,64,81,100]
