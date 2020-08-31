module Demo where

class Eq a where
  (==) :: a -> a -> Bool
  (/=) :: a -> a -> Bool

-- :t (==)
-- (==) :: Eq a => a -> a -> Bool

-- :t (== 42)
-- (== 42) :: (Eq a, Num a) => a -> Bool

-- :t (== 'x')
-- (== 'x') :: Char -> Bool

-- :t elem
-- elem :: (Foldable t, Eq a) => a -> t a -> Bool
