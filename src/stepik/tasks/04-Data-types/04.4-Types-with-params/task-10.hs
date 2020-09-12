{-|
  Допустим тип Coord определен следующим образом:

  data Coord a = Coord a !a
  Пусть определены следующие функции:

  getX :: Coord a -> a
  getX (Coord x _) = x

  getY :: Coord a -> a
  getY (Coord _ y) = y

  Какие из следующих вызовов  вернут число 3?
-}

{-|
  ( ) getX (Coord undefined 3)
  ( ) getY (Coord 3 undefined)
  ( ) getX (Coord undefined undefined)
  ( ) getY (Coord 3 7)
  ( ) getY undefined
  (*) getY (Coord undefined 3)
  (*) getX (Coord 3 3)
  ( ) getX (Coord 3 undefined)
-}
