module Demo where

{-|
@Форсирует вычисление выражения до WHNF
  seq :: a -> b -> b
  seq _|_ b = _|_
  seq a   b =  b
-}

a = seq 1 2
-- 2

seq undefined 2
-- Exception: Prelude.undefined

seq (id undefined) 2
-- Exception: Prelude.undefined

seq (undefined, undefined) 2
-- 2

seq (\x -> undefined) 2
-- 2
