{-|
  Предположим, мы разрабатываем на Haskell интерфейс системы перевода для естественных языков.
  Он должен содержать функцию translate с параметрами text, languageFrom и languageTo.
  Расположите параметры в таком порядке, чтобы было удобно реализовывать следующие функции:
  translateFromSpanishToRussian, translateFromEnglishToRussian и translateToRussian.

  Select one option from the list
-}

-- translate text languageFrom languageTo
-- translate text languageTo languageFrom
-- translate languageFrom text languageTo
-- translate languageFrom languageTo text
-- translate languageTo text languageFrom
-- CORRECT: translate languageTo languageFrom text