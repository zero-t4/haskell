module Demo where

foo 1 2 = 3
foo 0 _ = 5

a = foo 0 undefined
-- 5

b = foo 1 (5-3)
-- 3

bar (1, 2) = 3
bar (0, _) = 5
c = bar (0, undefined)
-- 5

d = bar (1, (5-3))
-- 3