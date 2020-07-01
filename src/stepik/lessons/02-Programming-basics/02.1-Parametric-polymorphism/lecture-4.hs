module Test where
import Data.Function

-- lambda functions

f x = 2 * x + 7
a = f 10
-- 27

b = (\x -> 2 * x + 7) 10
-- 27

f' = \x -> 2 * x + 7
c = f' 10
-- 27

lenVec x y = sqrt $ x^2 + y^2
lenVec' = \x -> \y -> sqrt $ x^2 + y^2
lenVec'' = \x y -> sqrt $ x^2 + y^2

-- on: takes two functions
-- first result making function (a -> a -> b)
-- second mapping funcsion (a -> b) x 2

d = ((*) `on` (+1)) 2 2
-- 9
-- ~> (*) on (+1) 2 2
-- ~> (*) (2+1) (2+1)
-- ~> (*) 3 3
-- ~> 9
