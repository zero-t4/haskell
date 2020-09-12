module Demo where

twice :: a -> [] a
twice x = [x,x]

thrice :: a -> (,,) a a a
thrice x = (,,) x x x

-- :t thrice
-- thrice :: a -> (a, a, a)

-- a -> b
-- equal to
-- (->) a b

id' :: (->) a a
id' x = x

const' :: (->) a ((->) b a)
const' x y = x

{-|
  data Maybe a = Nothing | Just a

  data Either a b = Left a | Right b
-}

-- :t Just 'w'
-- Just 'w' :: Maybe Char

-- :t Left "ABC"
-- Left "ABC" :: Either [Char] b

-- :t Right True
-- Right True :: Either a Bool

roots :: Double -> Double -> Double -> Either [Char] (Double, Double)
roots a b c
  | discr >= 0 = Right (x1, x2)
  | otherwise  = Left "Negative discr, so there is no value"
  where
    x1 = helper (-d)
    x2 = helper d
    helper x = (-b + x) / (2 * a)
    d = sqrt discr
    discr = b ^ 2 - 4 * a * c
