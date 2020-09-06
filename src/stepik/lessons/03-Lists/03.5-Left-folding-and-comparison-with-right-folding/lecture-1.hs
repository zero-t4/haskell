module Demo where

import Prelude hiding (foldl)

{-|
  foldl f ini [1,2,3] ->> 1 `f` (2 `f` (3 `f` ini))

  ((ini `f` 1) `f` 2) `f` 3

  f(f(f ini 1) 2) 3

  foldl :: (b -> a -> b) -> b -> [a] -> b
-}

