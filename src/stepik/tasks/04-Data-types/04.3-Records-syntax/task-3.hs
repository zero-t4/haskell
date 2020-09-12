{-|
  Допустим мы объявили тип

  data Shape = Circle Double | Rectangle Double Double

  Что произойдет при объявлении такой функции:

  isRectangle :: Shape -> Bool
  isRectangle Rectangle{} = True
  isRectangle _ = False
-}

{-
  ( ) Она не компилируется, так как объявление типа Shape не использует синтаксис записей
  ( ) Она не компилируется из-за синтаксической ошибки
  ( ) Она компилируется и всегда возвращает True
  ( ) Она компилируется и всегда возвращает False
  (*) Она компилируется и возвращает True, если на вход передается Rectangle, иначе она возвращает False
}