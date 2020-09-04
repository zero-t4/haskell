module Demo where

import Prelude hiding (and, or, all, any)

and :: [Bool] -> Bool
and []      = True
and (x:xs)  = x && and xs
{-|
  *Demo> :t and
  and :: [Bool] -> Bool

  *Demo> :t (&&)
  (&&) :: Bool -> Bool -> Bool
-}

or :: [Bool] -> Bool
or []       = False
or (x:xs)   = x || or xs

all :: (a -> Bool) -> [a] -> Bool
all p = and . map p

a = all odd [1,3,5,2]
-- False

b = all odd [1,3,5]
-- False

any :: (a -> Bool) -> [a] -> Bool
any p = or . map p

c = any odd [1,3,5,2]
-- True

d = any even [1,3,5]
-- False

e = words "Hello must be a word of length 2 and be a word of length"
-- ["Hello","must","be","a","word","of","length","2","and","be","a","word","of","length"]

f = unwords e
-- "Hello must be a word of length 2 and be a word of length"

revWords = unwords . map reverse . words $ "Hello World!"
-- "olleH !dlroW"

