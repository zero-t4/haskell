{-|
  Используя unfoldr, реализуйте функцию, которая возвращает в обратном алфавитном порядке список символов, попадающих в заданный парой диапазон. Попадание символа x в диапазон пары (a,b) означает, что x >= a и x <= b.

  revRange :: (Char,Char) -> [Char]
  revRange = unfoldr g
    where g = undefined
  GHCi> revRange ('a','z')
  "zyxwvutsrqponmlkjihgfedcba"
-}

revRange :: (Char,Char) -> [Char]
revRange = unfoldr g where
  g (begin, end)
    | begin > end = Nothing
    | otherwise   = Just (end, (begin, pred end))