module Lecture3 where
import qualified Lecture2 as L2

-- Let in functions call

factorial6 n
  | n >= 0 = let
      helper acc 0 = acc
      helper acc n = helper (acc * n) (n - 1)
    in helper 1 n
  | otherwise = error "arg must be >= 0"

rootsDiff a b c = let
  (x1, x2) = L2.roots a b c
  in x2 - x1