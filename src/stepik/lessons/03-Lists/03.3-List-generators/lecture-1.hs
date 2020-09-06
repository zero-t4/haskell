module Demo where

-- Infinifive recusive func-n
bot = not bot

ones = 1 : ones
-- 1,1,1,1,1...

nats n = n : nats (n + 1)
-- n, n+1, n+1+1, n+1+1+1,..

a = take 10 $ nats 5
-- [5,6,7,8,9,10,11,12,13,14]

b = head $ nats 42
-- 42

{-|
head (x:xs) = x
head [] = error "Empty list"

head $ nats 42
  ~> head (42 : nats (42+1)) -- WHNF
  ~> 42

head $ nats (40+2)
  ~> head ((40+2) : nats ((40+2)+1)) -- WHNF
  ~> 40 + 2
  ~> 42
-}

c = map (^2) $ nats 1
-- [1,4,9,16,25,36..