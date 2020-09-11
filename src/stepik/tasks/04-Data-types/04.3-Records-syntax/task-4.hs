{-|
  Определить функцию abbrFirstName, которая сокращает имя до первой буквы с точкой, то есть, если имя было "Ivan",
  то после применения этой функции оно превратится в "I.". Однако, если имя было короче двух символов, то оно не меняется.
-}

data Person = Person { firstName :: String, lastName :: String, age :: Int }
  deriving (Show, Eq)

abbrFirstName :: Person -> Person
abbrFirstName person
  | length f > 2 = person { firstName = (take 1 f) ++ "."}
  | otherwise    = person
  where
    f = firstName person
