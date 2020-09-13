module Demo where

{-|
  class Monad m where
    return :: a -> m a
    (>>=)  :: m a -> (a -> m b) -> m b -- поизносят bind
    ...
infixl 1 >>=
-}

toKleisli :: Monad m => (a -> b) -> (a -> m b)
toKleisli f x = return (f x)

-- :t toKleisli cos
-- toKleisli cos :: (Monad m, Floating b) => b -> m b

a = toKleisli cos 0 :: [Double]
-- [1.0]

b = toKleisli cos 0 :: Maybe Double
-- Just 1.0