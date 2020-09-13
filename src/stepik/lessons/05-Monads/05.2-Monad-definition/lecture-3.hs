module Demo where

import Prelude hiding (($))

{-|
  class Monad m where
    return :: a -> m a
    (>>=)  :: m a -> (a -> m b) -> m b -- поизносят bind
    ...
infixl 1 >>=
-}

infixr 0 $
($) :: (a -> b) -> a -> b
f $ x = f x

infixl 1 &
(&) :: a -> (a -> b) -> b
x & f = f x

a = (+1) $ (*3) $ (+2) $ 5
-- 22

b = 5 & (+2) & (*3) & (+1)
-- 22

-- :t fmap
-- fmap :: Functor f => (a -> b) -> f a -> f b

-- :t flip fmap
-- flip fmap :: Functor f => f a -> (a -> b) -> f b
