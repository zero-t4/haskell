module Demo where

import Prelude hiding (length, (++), null)

length :: [a] -> Int
length []     = 0
length (x:xs) = 1 + length xs
--length (_:xs) = 1 + length xs

(++) :: [a] -> [a] -> [a]
[] ++ ys     = ys
(x:xs) ++ ys = x : xs ++ ys

-- is list empty
null :: [a] -> Bool
null [] = True
null _  = False
