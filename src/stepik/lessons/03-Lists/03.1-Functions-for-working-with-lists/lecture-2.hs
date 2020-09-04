module Demo where

-- head :: [a] -> a
a = head [1,2,3]
-- 1

-- tail :: [a] -> [a]
b = tail [1,2,3]
-- [2,3]

second :: [a] -> a
second xs = head (tail xs)
-- second = head . tail

c = second [1,2,3]
-- 2

-- d = second [1]
-- Exception: Prelude.head: empty list

fst' ((,) x y) = x

e = fst' ("Hi", 1)

head' ((:) x xs) = x
-- head' (x:xs) = x
-- head' (x:_) = x

f = head' [1,2]

tail' (x:xs) = xs
--tail' (_:xs) = xs

g = tail' [1,2,3]

second' :: [a] -> a
second' (_:xs) = head xs

h = second' [1,2,3]


second'' :: [a] -> a
second'' (_:x:_) = x

i = second'' [1,2,3]