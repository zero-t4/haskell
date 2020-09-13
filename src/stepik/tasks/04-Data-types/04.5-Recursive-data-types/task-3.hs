{-|
  Тип бинарных деревьев можно описать следующим образом:

  data Tree a = Leaf a | Node (Tree a) (Tree a)

  Реализуйте функцию height, возвращающую высоту дерева, и функцию size, возвращающую количество узлов в дереве
  (и внутренних, и листьев). Считается, что дерево, состоящее из одного листа, имеет высоту 0.
-}

data Tree a = Leaf a | Node (Tree a) (Tree a)

height :: Tree a -> Int
height (Leaf _) = 0
height (Node a b) = max (height a) (height b) + 1

size :: Tree a -> Int
size (Leaf _) = 1
size (Node a b) = size a + size b + 1
