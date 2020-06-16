f $ x = f x

{- f (g x (h y)) == f $ g x (h y) == f $ g x $ h y -}

f a b c = a + b + c
c a b = a + b
result = c 4 $ f 1 2 3
-- 10
result' = c 4 (f 1 2 3)
-- 10