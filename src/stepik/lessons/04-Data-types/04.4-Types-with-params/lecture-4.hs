module Demo where

import Data.Complex
import Data.Ratio

data CoordLazy a = CoordLazy a a deriving Show

data CoordStrict a = CoordStrict !a !a deriving Show

getXLazy :: CoordLazy a -> a
getXLazy (CoordLazy x _) = x

getXStrict :: CoordStrict a -> a
getXStrict (CoordStrict x _) = x

a = getXLazy (CoordLazy 3 5)
a' = getXLazy (CoordLazy 3 undefined)
-- 3

b = getXStrict (CoordStrict 3 5)
-- 3
-- b' = getXStrict (CoordStrict 3 undefined)
-- *** Exception: Prelude.undefined

c = 2 :+ 5

{-|
  data Complex a = !a :+ !a
  data   Ratio a = !a :% !a
-}

d = 2 `CoordStrict` 5

