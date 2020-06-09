-- fold == `reduce` in js
-- foldl from left to right
sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

shortSum' :: (Num a) => [a] -> a
shortSum' = foldl (+) 0

-- foldr from left to right
-- foldr :: Foldable t => (a -> b -> b) -> b -> t a -> b


-- foldr1 takes first element as accumulator
maximum' :: (Ord a) => [a] -> a
maximum' = foldr1 (\x acc -> if x > acc then x else acc)

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

product' :: (Num a) => [a] -> a
product' = foldr1 (*)

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x acc -> if p x then x : acc else acc) []

head' :: [a] -> a
head' = foldr1 (\x _ -> x)

last' :: [a] -> a
last' = foldl1 (\_ x -> x)