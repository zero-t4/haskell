{-|
  Используя функцию foldr, напишите реализацию функции lengthList, вычисляющей количество элементов в списке.

  GHCi> lengthList [7,6,5]
  3
-}

lengthList :: [a] -> Int
lengthList = foldr (\_ acc -> acc + 1) 0