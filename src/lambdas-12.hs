-- Lamda starts with \

numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))
--66

-- with two parameters
twoP = zipWith (\a b -> (a * 30 + 3) / b) [5,4,3,2,1] [1,2,3,4,5]


-- pattern matching (could cause run time error)
a = map (\(a,b) -> a + b) [(1,2),(3,5),(6,3),(2,6),(2,5)]


addThree :: (Num a) => a -> a -> a -> a
addThree x y z = x + y + z


same :: (Num a) => a -> a -> a -> a
same = \x -> \y -> \z -> x + y + z

flip' :: (a -> b -> c) -> b -> a -> c
flip = f x y = f y x

sameFlip' :: (a -> b -> c) -> b -> a -> c
sameFlip' f = \x y -> f y x
