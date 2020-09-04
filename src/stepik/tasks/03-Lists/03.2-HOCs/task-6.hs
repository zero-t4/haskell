{-|
  Реализуйте функцию delAllUpper, удаляющую из текста все слова, целиком состоящие из символов в верхнем регистре. Предполагается, что текст состоит только из символов алфавита и пробелов, знаки пунктуации, цифры и т.п. отсутствуют.

  GHCi> delAllUpper "Abc IS not ABC"
  "Abc not"

  Постарайтесь реализовать эту функцию как цепочку композиций, аналогично revWords из предыдущего видео.
-}

module Main where
import Data.Char
import Data.List

join :: [a] -> [[a]] -> [a]
join delim l = concat (intersperse delim l)

delAllUpper :: String -> String
delAllUpper = join " " . filter (any isLower) . words