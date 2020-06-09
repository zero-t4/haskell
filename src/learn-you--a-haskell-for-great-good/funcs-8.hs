-- pattern matching
lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"


-- recursion
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- tuples
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors a b = (fst a + fst b, snd a + snd b)

addVectors' :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- (x:_) :: Get first element of list and other are not valuable
head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x


tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
-- (x:y:[]) the same as [x,y]
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
-- All elements can be witten as something@([n..])
tell all@(x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y ++ "and ALL IS IT:" ++ show all

-- Case
-- head' == head'' :: True
head'' :: [a] -> a
head'' xs = case xs of [] -> error "No head for empty lists!"
                      (x:_) -> x

describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of [] -> "empty."
                                               [x] -> "a singleton list."
                                               xs -> "a longer list."

describeList' :: [a] -> String
describeList' xs = "The list is " ++ what xs
    where what [] = "empty."
          what [x] = "a singleton list."
          what xs = "a longer list."
