{-|
  Сколько шагов редукции потребуется, чтобы вычислить значение функции value, если используется ленивая стратегия вычислений с механизмом разделения?

  bar x y z = x + y
  foo a b = bar a a (a + b)
  value = foo (3 * 10) (5 - 2)

  Примечание. Подстановку тела функции value вместо value не считайте.
-}

-- 4