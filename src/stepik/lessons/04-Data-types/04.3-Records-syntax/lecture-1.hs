module Demo where

data Person' = Person' String String Int

firstName' :: Person' -> String
firstName' (Person' x _ _) = x

lastName' :: Person' -> String
lastName' (Person' _ y _) = y

age' :: Person' -> Int
age' (Person' _ _ z) = z

data Person = Person { firstName :: String, lastName :: String, age :: Int }
  deriving (Show, Eq)

-- :t firstName
-- firstName :: Person -> String

-- :t age
-- age :: Person -> Int

john = Person "John" "Doe" 32

a = age john
-- 32

b = firstName john
-- "John"

c = lastName john
-- "Doe"

d = john
-- Person {firstName = "John", lastName = "Doe", age = 32}

infixl 1 &

(&) :: a -> (a -> b) -> b
x & f = f x

e = john & age
-- 32

f = john & lastName
-- "Doe"

-- f $ g $ h $ x
-- f (g (h x))

-- x & h & g & f
-- f (g (h x))
