{-|
  Maybe можно рассматривать как простой контейнер, например, как список длины 0 или 1.
  Реализовать функции maybeToList и listToMaybe, преобразующие Maybe a в [a] и
  наоборот(вторая функция отбрасывает все элементы списка, кроме первого).
-}

maybeToList :: Maybe a -> [a]
maybeToList x =
  case x of
    Just x  -> [x]
    Nothing -> []

listToMaybe :: [a] -> Maybe a
listToMaybe []    = Nothing
listToMaybe (x:_) = Just x