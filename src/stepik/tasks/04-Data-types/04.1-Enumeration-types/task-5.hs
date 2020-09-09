-- Пусть определены следующие функции:

emptyOrSingleton :: Bool -> a -> [a]
emptyOrSingleton False _ = []
emptyOrSingleton True x = [x]

isEqual1 :: (Eq a, Eq b) => (a, b) -> (a, b) -> Bool
isEqual1 (a, b) (a', b') = a == a' && b == b'

-- Выберите варианты вызовов этих функций, при которых сопоставление с образцом будет осуществлено успешно.

-- ( ) isEqual1 undefined (undefined, undefined)
-- (*) isEqual1 (undefined, undefined) (undefined, undefined)
-- ( ) isEqual1 undefined undefined
-- ( ) isEqual1 (undefined, undefined) undefined
-- (*) emptyOrSingleton True undefined
-- (*) emptyOrSingleton False undefined
-- ( ) emptyOrSingleton undefined 5
