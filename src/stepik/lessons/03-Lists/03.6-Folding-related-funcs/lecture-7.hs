module Demo where

unfoldr :: (b -> Maybe (a,b)) -> b -> [a]
unfoldr f ini = helper (f ini)
  where
    helper (Just (x, ini')) = x : unfoldr f ini'
    helper Nothing          = []

a = unfoldr (\x -> if x == 10 then Nothing else Just (x, x+2)) 0
-- [0,2,4,6,8]
