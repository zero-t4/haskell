{-|
  Исправьте ошибку в приведенном коде.

  eitherToMaybe :: Either a -> Maybe a
  eitherToMaybe (Left a) = Just a
  eitherToMaybe (Right _) = Nothing
-}

eitherToMaybe :: Either a b -> Maybe a
eitherToMaybe (Left a) = Just a
eitherToMaybe (Right _) = Nothing
