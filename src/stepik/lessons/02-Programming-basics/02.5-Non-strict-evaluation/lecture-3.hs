module Demo where

const42 :: a -> Int
const42 = const 42

a = const42 True
-- 42

b = const42 undefined
-- 42, function undefined was not called