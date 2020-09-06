module Demo where

import Prelude hiding (foldl)

{-|
  foldl :: (b -> a -> b) -> b -> [a] -> b
  foldr f ini []      = ini
  foldr f ini (x:xs)  = foldr f (f ini x) xs
-}

foldl :: (b -> a -> b) -> b -> [a] -> b
foldl f ini []        = ini
foldl f ini (x:xs)    = foldl f ini' xs
  where ini' = f ini x

foldl' :: (b -> a -> b) -> b -> [a] -> b
foldl' f ini []        = ini
foldl' f ini (x:xs)    = ini `seq` foldl' f ini' xs
  where ini' = f ini x