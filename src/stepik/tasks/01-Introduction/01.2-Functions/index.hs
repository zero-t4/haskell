{-|
  В стандартной библиотеке Haskell есть функция вычисления логарифма по произвольному
  основанию logBase. Это функция двух переменных, которой требуется передать основание
  логарифма и аргумент, на котором логарифм будет вычислен. Какие из следующих вызовов
  обеспечат вычисление логарифма по основанию 2 от 8?
-}

correct0 = (logBase 2) 8
-- logBase (2, 8)
-- (logBase, 2, 8)
-- logBase (2 8)
correct1 = logBase 2 8
