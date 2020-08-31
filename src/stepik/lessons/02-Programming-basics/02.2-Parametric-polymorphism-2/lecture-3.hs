module Test where
import Data.Function

a = fst (1,2)
-- 1

-- :t on
-- on :: (b -> b -> c) -> (a -> b) -> a -> a -> c

{--|
  :t fst `on` (^2)
  -- Error because `fst` is not curried func-n

  <interactive>:1:1: error:
      • Occurs check: cannot construct the infinite type:
          b ~ (b -> c, b0)
        Expected type: b -> b -> c
          Actual type: (b -> c, b0) -> b -> c
      • In the first argument of ‘on’, namely ‘fst’
        In the expression: fst `on` (^ 2)

  ----
  :t curry fst `on` (^2)
  curry fst `on` (^2) :: Num c => c -> c -> c

  -- Curried version works fine
--}

avg :: (Double, Double) -> Double
avg p = (fst p + snd p) / 2

b = curry avg `on` (^2)
-- :t curry avg `on` (^2)
-- curry avg `on` (^2) :: Double -> Double -> Double

c = b 1 2
-- 2,5

-- curry takes `uncurried` function and return curried func-n that takes two params
curry' f x y = f (x, y)
-- :t curry :: ((a, b) -> c) -> a -> b -> c
-- :t curry' :: ((a, b) -> t) -> a -> b -> t


-- uncurry if opposite of curry, it takes curried function and return func-n that takes Tuple
-- :t uncurry
-- uncurry :: (a -> b -> c) -> (a, b) -> c

d = (uncurry $ curry fst) (1,2)

sum2 a b = a + b
f = sum2 1 2
-- 3

sum2' = uncurry sum2
f' = sum2' (1,2)
-- 3