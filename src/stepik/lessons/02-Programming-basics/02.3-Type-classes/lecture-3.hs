module Demo where

class Eq a where
  (==), (/=) :: a -> a -> Bool

instance Demo.Eq Bool where
  True   == True   = True
  False  == False  = True
  _      == _      = False

  x /= y = not (x Demo.== y)

-- Class with default implementation
{-|
  class Eq1 a where
    (==), (/=) :: a -> a -> Bool
    x /= y = not (x == y)

  instance Eq1 Bool where
    True  == True   = True
    False == False  = True
    _     == _      = False
-}