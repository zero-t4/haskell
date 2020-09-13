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

newtype Sum a = Sum {getSum :: a}
  deriving (Eq, Ord, Read, Show, Bounded)

instance Num a => Monoid (Sum a) where
  mempty = Sum 0
  Sum x `mappend` Sum y = Sum (x + y)


newtype Product a = Product {getProduct :: a}
  deriving (Eq, Ord, Read, Show, Bounded)

instance Num a => Monoid (Product a) where
  mempty = Product 0
  Product x `mappend` Product y = Product (x * y)

instance (Monoid a, Monoid b) => Monoid (a, b) where
  mempty = (mempty, mempty)
  (x1,x2) `mappend` (y1,y2) =
    (x1 `mappend` y1, y2 `mappend` x2)

a = ("Hello", Product 2) `mappend` (" World", Product 5)
-- ("Hello World",Product {getProduct = 10})

instance Monoid a => Monoid (Maybe a) where
  mempty = Nothing
  Nothing `mappend` m = m
  m `mappend` Nothing = m
  Just m1 `mappend` Just m2 = Just (m1 `mappend` m2)

newtype First a = First { getFirst :: Maybe a}
  deriving (Eq, Ord, Read, Show)

instance Monoid (First a) where
  mempty = First Nothing
  First Nothing `mappend` r = r
  l `mappend` _             = l

b = mconcat [First Nothing, First (Just 2), First (Just 3)]
-- First {getFirst = Just 2}

c = mconcat $ map First [Nothing, (Just 2), (Just 3)]
-- First {getFirst = Just 2}

d = getFirst c
-- Just 2

firstConcat = getFirst . mconcat . map First

e = firstConcat [Nothing, (Just 2), (Just 3)]
-- Just 2