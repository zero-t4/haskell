{-|
  Пусть синоним типа Endo определен следующим образом:

  type Endo a = a -> a
  Выберите из списка типы, эквивалентные Endo (Endo Int).
-}

{-|
  ( ) Int
  (*) (Int -> Int) -> Int -> Int
  ( ) Int -> Int
  ( ) Int -> Int -> (Int -> Int)
  ( ) Int -> (Int -> Int)
  (*) (Int -> Int) -> (Int -> Int)
  ( ) (Int -> Int) -> Int
  ( ) Int -> Int -> Int -> Int
  ( ) Int -> Int -> Int
-}