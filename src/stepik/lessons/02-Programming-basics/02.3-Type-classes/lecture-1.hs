-- :t 7
-- 7 :: Num p => p

-- :t (+)
-- (+) :: Num a => a -> a -> a

-- :t (>)
-- (>) :: Ord a => a -> a -> Bool

-- :t (> 7)
-- (> 7) :: (Ord a, Num a) => a -> Bool

-- :i Num
{-|
  Prelude> :i Num
  class Num a where
    (+) :: a -> a -> a
    (-) :: a -> a -> a
    (*) :: a -> a -> a
    negate :: a -> a
    abs :: a -> a
    signum :: a -> a
    fromInteger :: Integer -> a
    {-# MINIMAL (+), (*), abs, signum, fromInteger, (negate | (-)) #-}
          -- Defined in ‘GHC.Num’
  instance Num Word -- Defined in ‘GHC.Num’
  instance Num Integer -- Defined in ‘GHC.Num’
  instance Num Int -- Defined in ‘GHC.Num’
  instance Num Float -- Defined in ‘GHC.Float’
  instance Num Double -- Defined in ‘GHC.Float’
-}
