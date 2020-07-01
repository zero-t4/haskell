-- Polymorphism means the condition of occurring in several different forms.

-- Parametric polymorphic functions
id' x = x
-- :t id'
-- id' :: p -> p

const' a b = a
-- :t const'
-- const' :: p1 -> p2 -> p1

-- :t const' 2
-- const' 2 :: Num p1 => p2 -> p1

-- :t undefined
-- undefined :: a

-- :t error
-- error :: [Char] -> a
