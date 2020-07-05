import Data.Function
{-|
  f :: b -> c
  g :: a -> b
  x :: a

  f (g x) :: c
  \x -> f (g x) :: a -> c

  compose' f g = \x -> f (g x)

  :i (.)
  (.) :: (b -> c) -> (a -> b) -> a -> c   -- Defined in ‘GHC.Base’
  infixr 9 .
-}

sumFstFst' = (+) `on` (fst . fst)

{-|
  Цепочка последовательных применений может быть заменена композицией
  doIt x = f ( g (h x))
  doIt x = f . (g . h)
}