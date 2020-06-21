module Demo where

factorial n = if n == 0 then 1 else n * factorial (n - 1)

factorial' 0 = 1
factorial' n = n * factorial' (n - 1)