module Demo where

import Prelude hiding ((=<<), (<=<))

{-|
class Monad m where
  return :: a -> m a

  (>>=)  :: m a -> (a -> m b) -> m b -- поизносят bind

  (>>)  :: m a -> m b -> m b -- поизносят bind
  x >> y = x >>= \_ -> y

  fail :: String -> m a
  fail s = error s
-}

(=<<) :: Monad m => (a -> m b) -> m a -> m b
(=<<) = flip (>>=)

(<=<) :: Monad m => (b -> m c) -> (a -> m b) -> (a -> m c)
f <=< g = \x -> g x  >>= f
-- (<=<) f g x = g x >>= f
