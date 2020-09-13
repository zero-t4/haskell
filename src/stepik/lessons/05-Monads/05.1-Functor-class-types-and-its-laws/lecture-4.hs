module Demo where

import Prelude hiding (Functor, fmap)

{-|
  Functor laws

  1) fmap id = id
  2) fmap (f . g) = fmap f . fmap g
-}

class Functor f where
  fmap :: (a -> b) -> f a -> f b

instance Functor [] where
  fmap _ []     = []
  fmap g (x:xs) = g x : fmap g xs

a = fmap id [1,2,3]
-- [1,2,3]

instance Functor Maybe where
  fmap _ Nothing     = Nothing
  fmap f (Just a)    = Just (f a)

b = fmap id (Just 42)
-- Just 42

c = (fmap (+1) . fmap (^2)) [1,2,3]
-- [2,5,10]

d = fmap ((+1) . (^2)) [1,2,3]
-- [2,5,10]
