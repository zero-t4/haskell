module Demo where

import Prelude hiding (last, init, reverse)

last :: [a] -> a
last (x:[]) = x
last (_:xs) = last xs

init :: [a] -> [a]
init []  = error "init params should not be empty"
init [x] = []
init (x:xs) = x : init xs

a = init [1,2,3]
-- [1,2]

{-|
  sum, product :: (Num a) => [a] -> a
  maximum, minimum :: (Ord a) => [a] -> a
-}

reverse :: [a] -> [a]
reverse l = rev l [] where
  rev []     a = a
  rev (x:xs) a = rev xs (x:a)