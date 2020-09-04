{-|
  Напишите функцию groupElems которая группирует одинаковые элементы в списке (если они идут подряд) и возвращает список таких групп.

  GHCi> groupElems []
  []
  GHCi> groupElems [1,2]
  [[1],[2]]
  GHCi> groupElems [1,2,2,2,4]
  [[1],[2,2,2],[4]]
  GHCi> groupElems [1,2,3,2,4]
  [[1],[2],[3],[2],[4]]
-}

groupElems :: Eq a => [a] -> [[a]]
groupElems [] = []
groupElems (x:xs) = equals : groupElems others
    where
        (equals, others) = span (== x) (x:xs)