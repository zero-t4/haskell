{-|
  Выберите корректные объявления типов.
-}

{-|
  (*) newtype A a b = A b
  ( ) newtype A a = A
  (*) newtype A a = A a
  ( ) newtype A = A
  ( ) newtype A a b = A a b
  ( ) newtype A = A a
  (*) newtype A = A A
  ( ) newtype A a = A a a
  ( ) newtype A = A A A
  (*) newtype A a b = A a
-}