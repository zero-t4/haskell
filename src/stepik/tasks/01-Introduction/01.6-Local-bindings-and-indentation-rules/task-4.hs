{-|
  Реализуйте функцию, находящую значение определённого интеграла от заданной функции f
  на заданном интервале [a,b] методом трапеций.
  (Используйте равномерную сетку; достаточно 1000 элементарных отрезков.)

  integration :: (Double -> Double) -> Double -> Double -> Double
  integration f a b = undefined

  GHCi> integration sin pi 0
  -2.0

  Результат может отличаться от -2.0, но не более чем на 1e-4.
-}

integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = integ f a b 1000
  where
    integ f a b 0 = 0
    integ f a b n = h * (f (a) + f (a + h)) / 2 + integ f (a + h) b (n - 1)
      where h = (b - a) / n

integration' :: (Double -> Double) -> Double -> Double -> Double
integration' f a b = h * (0.5 * (f a + f b) + g (n-1) 0) where
    n = 1000
    h = (abs b - abs a) / n
    g 0 s = s
    g n s = g (n-1) (s + f (b - h * n))