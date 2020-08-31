a = [True, False]

-- :t a
-- a :: [Bool]

-- :t "chars"
-- "chars" :: [Char]

-- :t []
-- [] :: [a]

-- :t (++)
-- (++) :: [a] -> [a] -> [a]

-- :t (:)
-- (:) :: a -> [a] -> [a]

-- Tuples

b = (,) True 3
-- (True,3)

c = (,,) True 3 'c'
-- (True,3,'c')

-- :t (,)
-- (,) :: a -> b -> (a, b)

-- :t (,,)
-- (,,) :: a -> b -> c -> (a, b, c)

-- :t (,) True 'c'
-- (,) True 'c' :: (Bool, Char)

dup x = (x,x)
-- :t dup
-- dup :: b -> (b, b)

-- :t fst
-- fst :: (a, b) -> a
