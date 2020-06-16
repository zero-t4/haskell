{-|
  Попробуйте вычислить значение выражения 2 ^ 3 ^ 2, не используя GHCi.
-}

a = 2 ^ 3 ^ 2
-- 512, because of `infixr`
-- (^) :: (Num a, Integral b) => a -> b -> a       -- Defined in ‘GHC.Real’
-- infixr 8 ^
