{-|
  В модуле Data.Tuple стандартной библиотеки определена функция swap :: (a,b) -> (b,a), переставляющая местами элементы пары:

  GHCi> swap (1,'A')
  ('A',1)
  Эта функция может быть выражена в виде:

  swap = f (g h)
  где f, g и h — некоторые идентификаторы из следующего набора:

  curry uncurry flip (,) const
  Укажите через запятую подходящую тройку f,g,h.
-}

-- uncurry,flip,(,)

{-|
  :t (,)
  (,) :: a -> b -> (a, b)

  :t flip (,)
  flip (,) :: b -> a -> (a, b)

  :t uncurry $ flip (,)
  uncurry $ flip (,) :: (b, a) -> (a, b)

  Checked this first
  > flip (,) 4 5
  (5.4)

  Since a function takes a tuple instead of two values, so need to apply uncurry to flip (,)
  > uncurry (flip (,)) (4,5)
  (5.4)
-}