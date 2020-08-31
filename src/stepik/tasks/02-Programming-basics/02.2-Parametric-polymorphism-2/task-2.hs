{-|
  Сколько разных всегда завершающихся функций с типом a -> (a,b) -> a -> (b,a,a) можно реализовать?
-}

-- 9
{-|
  f1 a (b, c) d = (c, a, b)
  f2 a (b, c) d = (c, a, d)
  f3 a (b, c) d = (c, b, d)
  f4 a (b, c) d = (c, b, a)
  f5 a (b, c) d = (c, d, a)
  f6 a (b, c) d = (c, d, b)
  f7 a (b, c) d = (c, a, a)
  f8 a (b, c) d = (c, b, b)
  f9 a (b, c) d = (c, d, d)
-}