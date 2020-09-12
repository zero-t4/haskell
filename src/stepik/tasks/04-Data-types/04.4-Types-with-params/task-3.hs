{-|
  Реализуйте функцию, которая ищет в строке первое вхождение символа, который является цифрой, и возвращает
  Nothing, если в строке нет цифр.
-}

import Data.Char(isDigit)
import Data.List(find)

findDigit :: [Char] -> Maybe Char
findDigit = find isDigit
