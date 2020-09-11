module Demo where

data Person = Person { firstName :: String, lastName :: String, age :: Int }
  deriving (Show, Eq)

john = Person "John" "Doe" 32

newPerson = Person {age = 40, firstName = "test", lastName = "test2"}
-- Person {firstName = "test", lastName = "test2", age = 40}

unknownPerson = Person {age = 18}
{-|
  lecture-2.hs:11:17: warning: [-Wmissing-fields]
      • Fields of ‘Person’ not initialised: firstName, lastName
      • In the expression: Person {age = 18}
        In an equation for ‘unknownPerson’:
            unknownPerson = Person {age = 18}
     |
  11 | unknownPerson = Person {age = 18}
     |                 ^^^^^^^^^^^^^^^^^
  Ok, one module loaded.
-}

a = age unknownPerson
-- 18

updateAge :: Int -> Person -> Person
updateAge newAge person = person { age = newAge}

b = age john
-- 32

c = updateAge 100 john

d = age c
-- 100

f = age john
-- 32
