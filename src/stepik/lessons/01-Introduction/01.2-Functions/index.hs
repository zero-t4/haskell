-- functions in Haskell calls as a `func param1 param2`, or `func (func param1) param2`

a = max 5 132742
-- 132742

-- With currying
b = (max 5) 132742
-- 132742

c = 3 + (max 5) 12
-- 15

-- Functions could be defined as
sumSquares x y = x ^ 2 + y ^ 2

-- Function names should start from lower case character
-- Data type names should start from Upper case character

rock'n'roll = 42
-- Valid function name, this function return constant 42

-- in order to defined function in ghci we should use `let rock'n'roll = 42`