{-|
  Реализуйте функцию, находящую сумму и количество цифр десятичной записи заданного целого числа.

   sum'n'count :: Integer -> (Integer, Integer)
   sum'n'count x = undefined

   GHCi> sum'n'count (-39)
   (12,2)
-}
sum'n'count x = (sum arr, (toInteger . length) arr)
  where
  	arr = digits x
  	digits = map (\x -> read [x] :: Integer) . show . abs