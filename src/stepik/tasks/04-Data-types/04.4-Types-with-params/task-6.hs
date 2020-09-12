{-|
  Реализуйте функцию parsePerson, которая разбирает строки вида firstName = John\nlastName = Connor\nage = 30 и возвращает либо результат типа Person, либо ошибку типа Error.

  Строка, которая подается на вход, должна разбивать по символу '\n' на список строк, каждая из которых имеет вид X = Y. Если входная строка не имеет указанный вид, то функция должна возвращать ParsingError.
  Если указаны не все поля, то возвращается IncompleteDataError.
  Если в поле age указано не число, то возвращается IncorrectDataError str, где str — содержимое поля age.
  Если в строке присутствуют лишние поля, то они игнорируются.
-}

data Error = ParsingError | IncompleteDataError | IncorrectDataError String

data Person = Person { firstName :: String, lastName :: String, age :: Int }

parsePerson :: String -> Either Error Person
parsePerson s = makePerson (lineWith "firstName ") (lineWith "lastName ") (lineWith "age ")
  where
    info :: [(String, String)]
    info = map (break (== '=')) . lines $ s

    lineWith :: String -> Maybe String
    lineWith = flip lookup info

    makePerson :: Maybe String -> Maybe String -> Maybe String -> Either Error Person
    makePerson (Just firstNameA) (Just lastNameA) (Just ageA) =
      case (firstNameA, lastNameA, ageA) of
        ('=' : ' ' : firstName, '=' : ' ' : lastName, '=' : ' ' : age) ->
          case reads age of
            [(i, "")] -> Right $ Person firstName lastName i
            _         -> Left $ IncorrectDataError age
        _ -> Left ParsingError
    makePerson _ _ _ = Left IncompleteDataError