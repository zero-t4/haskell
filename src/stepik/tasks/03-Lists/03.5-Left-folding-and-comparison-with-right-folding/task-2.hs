{-|
  Реализуйте функцию meanList, которая находит среднее значение элементов списка, используя однократный вызов функции свертки.

  GHCi> meanList [1,2,3,4]
  2.5

  Постобработка считается допустимой, то есть предполагаемая реализация функции meanList имеет вид

  meanList = someFun . foldr someFoldingFun someIni
-}

someFun = (\x -> (fst x) / (snd x))

someFoldingFun = (\x (s, c) -> (x + s, c + 1))

someIni = (0, 0)

meanList :: [Double] -> Double
meanList = someFun . foldr someFoldingFun someIni
