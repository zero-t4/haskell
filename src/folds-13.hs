-- fold == `reduce` in js
-- foldl from left to right
sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

shortSum' :: (Num a) => [a] -> a
shortSum' = foldl (+) 0

-- foldr from left to right
-- foldr :: Foldable t => (a -> b -> b) -> b -> t a -> b
