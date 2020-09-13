module Demo where

import Prelude hiding (Monoid, mappend, mconcat, mempty)

class Monoid a where
  mempty :: a            -- neutral element
  mappend :: a -> a -> a -- operation

  mconcat :: [a] -> a
  mconcat = foldr mappend mempty

-- :t [(*2), (+3), (^2)]
-- [(*2), (+3), (^2)] :: Num a => [a -> a]

a = zipWith ($) [(*2), (+3), (^2)] [1,2,3]
-- [2,5,9]

newtype Endo a = Endo { appEndo :: a -> a }

instance Monoid (Endo a) where
  mempty = Endo id
  Endo f `mappend` Endo g = Endo (f . g)
