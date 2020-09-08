module Demo where

import Prelude hiding (Bool, True, False)

data Bool = True | False

alwaysTrue :: Int -> Bool
alwaysTrue n = True

a = alwaysTrue 0
-- True

{-|
data bool = T | F
  error: Malformed head of type or class declaration: bool

data Bool = t | F
  error: Not a data constructor: ‘t’
-}

data B = T | F