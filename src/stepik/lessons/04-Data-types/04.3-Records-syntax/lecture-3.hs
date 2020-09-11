module Demo where

data Person = Person { firstName :: String, lastName :: String, age :: Int }
  deriving (Show, Eq)

person = Person {firstName="test", lastName = "test2", age=100}

name :: Person -> String
name person = firstName person ++ " " ++ lastName person
a = name person
-- "test test2"

name' :: Person -> String
name' (Person f l _) = f ++ " " ++ l
b = name' person
-- "test test2"

name'' :: Person -> String
name'' (Person {lastName = l, firstName = f}) = f ++ " " ++ l
c = name'' person
-- "test test2"
