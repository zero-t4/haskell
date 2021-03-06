{-|
  Используя однократный вызов свертки, реализуйте функцию evenOnly, которая выбрасывает из списка элементы, стоящие на нечетных местах, оставляя только четные.

  GHCi> evenOnly [1..10]
  [2,4,6,8,10]
  GHCi> evenOnly ['a'..'z']
  "bdfhjlnprtvxz"
-}

evenOnly :: [a] -> [a]
evenOnly [] = []
evenOnly [_] = []
evenOnly (x1:x2:xs) = x2 : evenOnly xs
