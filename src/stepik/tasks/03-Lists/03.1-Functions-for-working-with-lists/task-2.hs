{-|
  Реализуйте функцию nTimes, которая возвращает список, состоящий из повторяющихся значений ее первого аргумента. Количество повторов определяется значением второго аргумента этой функции.

  GHCi> nTimes 42 3
  [42,42,42]
  GHCi> nTimes 'z' 5
  "zzzzz"
-}

nTimes :: a -> Integer -> [a]
nTimes x 0 = []
nTimes x n = x : nTimes x (n-1)