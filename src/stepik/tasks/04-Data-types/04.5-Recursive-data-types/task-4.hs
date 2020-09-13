{-|
  Теперь нам нужно написать функцию avg, которая считает среднее арифметическое всех значений в дереве.
  И мы хотим, чтобы эта функция осуществляла только один проход по дереву. Это можно сделать при помощи
  вспомогательной функции, возвращающей количество листьев и сумму значений в них. Реализуйте эту функцию.
-}

data Tree a = Leaf a | Node (Tree a) (Tree a)

avg :: Tree Int -> Int
avg t =
    let (c,s) = go t
    in s `div` c
  where
    go :: Tree Int -> (Int,Int)
    go (Leaf x) = (1,x)
    go (Node a b) = (size1+size2, sum1+sum2) where
      (size1,sum1) = go a
      (size2,sum2) = go b