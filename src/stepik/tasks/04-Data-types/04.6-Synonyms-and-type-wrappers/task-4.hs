{-|
  Реализуйте представителя класса типов Monoid для Maybe' a так, чтобы mempty не был равен Maybe' Nothing.
  Нельзя накладывать никаких дополнительных ограничений на тип a, кроме указанных в условии.
-}

newtype Maybe' a = Maybe' { getMaybe :: Maybe a }
    deriving (Eq,Show)

instance Monoid a => Monoid (Maybe' a) where
  mempty = Maybe' $ Just (mempty)
  (Maybe' (Just a)) `mappend` (Maybe' (Just b))  = Maybe' $ Just (a `mappend` b)
  _ `mappend` _ = Maybe' $ Nothing
