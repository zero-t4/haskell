module Demo where

{-|
  @Форсирует вычисление выражения до WHNF
    seq :: a -> b -> b
    seq _|_ b = _|_
    seq a   b =  b

  ($!) :: (a -> b) -> a -> b
  f $! x = x `seq` f x
-}

a = const 42 undefined
-- 42

b = const 42 $ undefined
-- 42

-- c = const 42 $! undefined
-- Exception: Prelude.undefined

factorial :: Integer -> Integer
factorial n
  | n >= 0    = helper 1 n
  | otherwise = error "arg must be >= 0"
  where
    helper acc 0 = acc
    helper acc n = (helper $! (acc * n)) (n - 1)