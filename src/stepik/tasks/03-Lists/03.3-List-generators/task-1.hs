{-|
  Реализуйте c использованием функции zipWith функцию fibStream, возвращающую бесконечный список чисел Фибоначчи.

  GHCi> take 10 $ fibStream
  [0,1,1,2,3,5,8,13,21,34]
-}

fibStream :: [Integer]
fibStream = fibonacci 0 1
     where fibonacci a b = a : fibonacci b (a + b)