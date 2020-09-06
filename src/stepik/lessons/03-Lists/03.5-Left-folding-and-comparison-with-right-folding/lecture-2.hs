module Demo where

import Prelude hiding (foldl)

foldl :: (b -> a -> b) -> b -> [a] -> b
foldr f ini []      = ini
foldr f ini (x:xs)  = foldr f (f ini x) xs

{-|
foldl f ini 1:2:3:[]
  ~> foldl f (f ini 1) (2:3:[])
  ~> foldl f (f (f ini 1) 2) (3:[])
  ~> foldl f (f (f (f ini 1) 2) 3) []
  ~> f (f (f ini 1) 2) 3
-}