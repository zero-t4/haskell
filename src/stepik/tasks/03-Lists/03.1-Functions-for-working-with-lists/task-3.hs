{-|
  Исследуйте тип функции

  sndHead = snd . head

  и разберитесь, каково ее поведение. Эту функцию можно реализовать, используя сопоставление с образцом

  sndHead некоторый_образец = x

  Отметьте те образцы, которые подходят для этой цели.
-}

{-|
 (*) ((:) ((,) _ x) y)
  * ((,) x y : z)
  * ((,) y z : x)
 (*) ((,) y x : z)
 (*) ((_, x) : _)
  * ((,) ((:) _ _) x)
-}