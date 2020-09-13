{-|
  Определите представителя класса Functor для бинарного дерева, в каждом узле которого хранятся элементы типа Maybe:

  data Tree a = Leaf (Maybe a) | Branch (Tree a) (Maybe a) (Tree a) deriving Show


  GHCi> words <$> Leaf Nothing
  Leaf Nothing

  GHCi> words <$> Leaf (Just "a b")
  Leaf (Just ["a","b"])
-}

instance Functor Tree where
  fmap f (Leaf Nothing) = Leaf Nothing
  fmap f (Leaf (Just x)) = Leaf $ Just $ f x
  fmap f (Branch l Nothing r) = Branch (fmap f l) Nothing (fmap f r)
  fmap f (Branch l (Just x) r) = Branch (fmap f l) (Just $ f x) (fmap f r)
