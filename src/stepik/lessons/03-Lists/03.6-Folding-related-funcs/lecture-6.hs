module Demo where

import Data.List

-- :t Nothing
-- Nothing :: Maybe a

-- :t Just
-- Just :: a -> Maybe a

-- :t Just True
-- Just True :: Maybe Bool

-- :t Just False
-- Just True :: Maybe Bool

-- :t find
-- find :: Foldable t => (a -> Bool) -> t a -> Maybe a

a = find (==2) [1,2,3,4,5]
-- Just 2

b = find (==21) [1,2,3,4,5]
-- Nothing

-- :t lookup
-- lookup :: Eq a => a -> [(a, b)] -> Maybe b

c = lookup 2 [(2,"Hello"), (3, "World")]
-- Just "Hello"

d = lookup 21 [(2,"Hello"), (3, "World")]
-- Nothing
