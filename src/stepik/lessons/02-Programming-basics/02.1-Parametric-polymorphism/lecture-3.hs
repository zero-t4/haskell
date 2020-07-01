-- :t ($)
-- ($) :: (a -> b) -> a -> b

apply2 f x = f (f x)
-- :t apply2
-- apply2 :: (t -> t) -> t -> t

a = apply2 (+ 5) 12
-- 22

flip' f x y = f y x
b = flip' (/) 10 5
-- 0.5

c = (/) 10 5
-- 2.0

d = flip' const 10 20
-- 20