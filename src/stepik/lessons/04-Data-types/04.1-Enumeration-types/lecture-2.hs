module Demo where

data B = T | F deriving (Show, Eq, Read, Enum)

not1 :: B -> B
not1 T = F
--not1 F = T

a = not1 F
-- T

-- Eq
b = F == T
-- F

-- Enum
c = succ T
-- F

{-|
  not1 :: B -> B
  not1 T = F

  :set -fwarn-incomplete-patterns

  lecture-2.hs:6:1: warning: [-Wincomplete-patterns]
      Pattern match(es) are non-exhaustive
      In an equation for ‘not1’: Patterns not matched: F
    |
  6 | not1 T = F
    | ^^^^^^^^^^
  Ok, one module loaded.
-}
