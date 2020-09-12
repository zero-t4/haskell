{-|
  Реализуйте функцию findDigitOrX, использующую функцию findDigit (последнюю реализовывать не нужно).
  findDigitOrX должна находить цифру в строке, а если в строке цифр нет, то она должна возвращать символ 'X'.
  Используйте конструкцию case.
-}

import Data.Char(isDigit)
import Data.List(find)

findDigit :: [Char] -> Maybe Char
findDigit = find isDigit

findDigitOrX :: [Char] -> Char
findDigitOrX foundChar =
  case findDigit foundChar of
    Just a  -> a
    Nothing -> 'X'
