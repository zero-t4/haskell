module Demo where

import Prelude hiding (foldr, foldl, any)

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr f ini []     = ini
foldr f ini (x:xs) = x `f` foldr f ini xs

foldl :: (b -> a -> b) -> b -> [a] -> b
foldl f ini []      = ini
foldl f ini (x:xs)  = foldl f (f ini x) xs

any :: (a -> Bool) -> [a] -> Bool
any p = foldr (\x b -> p x || b) False

