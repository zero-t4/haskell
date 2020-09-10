{-|
  Пусть объявлен следующий тип данных:

  data Result = Fail | Success


  И допустим определен некоторый тип данных SomeData и некоторая функция

  doSomeWork :: SomeData -> (Result,Int)

  возвращающая результат своей работы и либо код ошибки в случае неудачи, либо 0 в случае успеха.
  Определите функцию processData, которая вызывает doSomeWork и возвращает строку "Success" в случае ее успешного завершения, либо строку "Fail: N" в случае неудачи, где N — код ошибки.
-}

processData :: SomeData -> String
processData input =
  case doSomeWork input of
    (Success, 0) -> "Success"
    (Fail, x)    -> "Fail: " ++ show x