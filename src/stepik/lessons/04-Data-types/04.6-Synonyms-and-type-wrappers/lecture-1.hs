module Demo where

import Data.Char
import qualified Data.Map as Map

-- type String = [Char]

allUpper :: String -> Bool
allUpper = all isUpper

type IntegerList = [Integer]

sumSquares :: IntegerList -> Integer
sumSquares = foldr1 (+) . map (^2)

xs = [1,2] :: IntegerList
-- [1,2]

ys = [1,2] :: [Integer]

a = xs == ys
-- True

type AssocList k v = [(k, v)]

lookup' :: Eq k => k -> AssocList k v -> Maybe v
lookup' _ []   = Nothing
lookup' key ((x,y):xys)
  | key == x   = Just y
  | otherwise  = lookup' key xys

b = lookup' 1 [(2,"Hello"), (3, "World")]
-- Nothing

c = lookup' 1 [(1,"Hello"), (2, " World"), (3, "!")]
-- Just "Hello"

type IntMap = Map.Map Int

-- :k Map.Map
-- Map.Map :: * -> * -> *

-- :k Map.Map Int
-- Map.Map Int :: * -> *

-- :k IntMap
-- IntMap :: * -> *
