module Demo where

class Enum a where
  succ, pred :: a -> a
  toEnum :: Int -> a
  fromEnum :: a -> Int

a = succ 4
-- 5

b = pred 66
-- 65

c = pred 'z'
-- y

d = fromEnum 'z'
122

e = toEnum 122 :: Int

class Bounded a where
  minBound, maxBound :: a

-- succ True
-- *** Exception: Prelude.Enum.Bool.succ: bad argument

-- minBound :: Bool
-- False

-- maxBound :: Bool
-- True

-- minBound :: Int
-- -9223372036854775808

