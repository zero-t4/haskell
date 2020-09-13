module Demo where

newtype IntList = IList [Int] deriving Show

example = IList [1,2]
-- IList [1,2]

data IntList' = IList' [Int] deriving Show

ignore' :: IntList' -> String
ignore' (IList' _) = "Hello"

ignore :: IntList -> String
ignore (IList _) = "Hello"

-- a = ignore' undefined
-- *** Exception: Prelude.undefined

b = ignore undefined
-- "Hello"

newtype Identity a = Identity {runIdentity :: a}
  deriving (Eq, Ord)

-- :k Identity
-- Identity :: * -> *

-- :t Identity
-- Identity :: a -> Identity a

-- :t runIdentity
-- runIdentity :: Identity a -> a
