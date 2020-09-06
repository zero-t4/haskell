module Demo where

{-|
foldr :: (a -> b -> b) -> b -> [a] -> b
-}

a = foldr (\x (s,p) -> (x+s, x*p)) (0, 1) [1,2,3,4]
-- (10,24)
