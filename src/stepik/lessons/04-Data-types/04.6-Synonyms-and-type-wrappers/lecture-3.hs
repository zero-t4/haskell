module Demo where

import Prelude hiding (Monoid, mappend, mconcat, mempty)

class Monoid a where
  mempty :: a            -- neutral element
  mappend :: a -> a -> a -- operation

  mconcat :: [a] -> a
  mconcat = foldr mappend mempty

{-|
Laws:
  mempty `mappend` x          = x
  x `mappend` mempty          = x
  (x `mappend` y) `mappend` z = x `mappend` (y `mappend` z)
-}

instance Monoid [a] where
  mempty  = []
  mappend = (++)

a = mconcat [[1,2], [], [3,4]]
-- [1,2,3,4]

newtype Sum a = Sum {getSum :: a}
  deriving (Eq, Ord, Read, Show, Bounded)

instance Num a => Monoid (Sum a) where
  mempty = Sum 0
  Sum x `mappend` Sum y = Sum (x + y)

b = Sum 2 `mappend` Sum 3
-- Sum {getSum = 5}
