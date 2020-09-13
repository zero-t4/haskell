module Demo where

import Prelude hiding (Functor, fmap)

class Functor f where
  fmap :: (a -> b) -> f a -> f b

instance Functor [] where
  fmap = map

a = map succ [1,2,3]
-- [2,3,4]

b = fmap succ [1,2,3]
-- [2,3,4]

instance Functor Maybe where
  fmap _ Nothing  = Nothing
  fmap f (Just a) = Just (f a)

c = fmap (*2) Nothing
-- Nothing

d = fmap (*2) Just (21)
-- Just 42
