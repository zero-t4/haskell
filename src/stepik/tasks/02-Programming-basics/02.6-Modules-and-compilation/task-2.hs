{-|
  Пусть модуль Foo содержит следующий код:

  module Foo (a, b) where

  a = undefined
  b = undefined
  c = undefined

  а модуль Bar такой:

  module Bar (a, d) where

  import Foo (a, b)

  d = undefined


  Отметьте функции, доступные для использования после загрузки в модуле Baz со следующим кодом:

  module Baz where

  import Bar
-}

{-|
 (*) d
  * c
 (*) a
  * b
-}