module Demo where

import Prelude hiding (foldl)

{-|
  foldr f ini [1,2,3] ->> 1 `f` (2 `f` (3 `f` ini))

  foldl f ini [1,2,3] ->> ((ini `f` 1) `f` 2) `f` 3

  f(f(f ini 1) 2) 3

  foldl :: (b -> a -> b) -> b -> [a] -> b
-}

