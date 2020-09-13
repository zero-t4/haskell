module Demo where

import Prelude hiding (Functor, fmap)

class Functor f where
  fmap :: (a -> b) -> f a -> f b

instance Functor ((,) s) where
  fmap g (x,y) = (x, g y)

-- :k (,)
-- (,) :: * -> * -> *

-- :k (,) Int
-- (,) Int :: * -> *

-- (a -> b) -> (s, a) -> (s, b)

a = fmap succ (1, 'A')
-- (1,'B')

instance Functor (Either e) where
  fmap g (Left x)  = Left x
  fmap g (Right y) = Right (g y)

b = fmap (+3) $ Right 1
-- Right 4

c = fmap (+3) $ Left 1
-- Left 1

d = fmap (+3) $ Left "AAA"
-- Left 1

instance Functor ((->) e) where
  fmap = (.)

e = fmap length tail "ABC"
-- 2