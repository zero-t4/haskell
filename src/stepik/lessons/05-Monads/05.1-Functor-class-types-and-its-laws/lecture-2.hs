module Demo where

import Data.Functor

data Tree a = Leaf a | Branch (Tree a) a (Tree a) deriving Show

testTree = Branch (Leaf 2) 3 (Leaf 4)

instance Functor Tree where
  fmap g (Leaf x)       = Leaf (g x)
  fmap g (Branch l x r) = Branch (fmap g l) (g x) (fmap g r)

a = fmap (^2) testTree
-- Branch (Leaf 4) 9 (Leaf 16)

b = (^2) `fmap` testTree
-- Branch (Leaf 4) 9 (Leaf 16)

c = (^2) <$> testTree
-- Branch (Leaf 4) 9 (Leaf 16)

d = (^2) <$> [1,2,3]
-- [1,4,9]

{-|
  :i <$>

  *Demo> :i <$>
  (<$>) :: Functor f => (a -> b) -> f a -> f b
          -- Defined in ‘Data.Functor’
  infixl 4 <$>
-}

e = (+5) <$> (^2) <$> testTree
-- Branch (Leaf 9) 14 (Leaf 21)

f = 42 <$ testTree
-- Branch (Leaf 42) 42 (Leaf 42)
