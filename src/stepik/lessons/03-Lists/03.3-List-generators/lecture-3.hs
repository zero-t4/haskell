a = [1..10]
-- [1,2,3,4,5,6,7,8,9,10]

-- save as
b = enumFromTo 1 10
-- [1,2,3,4,5,6,7,8,9,10]

-- :t enumFromTo
-- enumFromTo :: Enum a => a -> a -> [a]

{-|
:i enumFromTo

class Enum a where
  ...
  enumFromTo :: a -> a -> [a]
  ...
        -- Defined in ‘GHC.Enum’
-}

c = ['a'..'z']
-- "abcdefghijklmnopqrstuvwxyz"

d = [1,3..10]
-- [1,3,5,7,9]

-- save as
e = enumFromThenTo 1 3 10
-- [1,3,5,7,9]

f = take 5 $ [1..]
-- [1,2,3,4,5]

g = take 5 $ enumFrom 1
-- [1,2,3,4,5]

h = take 5 $ [7, 14..]
-- [7,14,21,28,35]

i = take 5 $ enumFromThen 7 14
-- [7,14,21,28,35]
