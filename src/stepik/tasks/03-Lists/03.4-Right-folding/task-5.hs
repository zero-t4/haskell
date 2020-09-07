{-|
  Какой функции стандартной библиотеки эквивалентно выражение foldr const undefined?
-}

-- head

-- foldr f ini [1,2,3] ->> 1 `f` (2 `f` (3 `f` ini))

-- foldr const undefined [1,2,3] ->> const 1 (const 2 (const (3 undefined)))
-- foldr const undefined [1,2,3] ->> const 1 (const 2 3)
-- foldr const undefined [1,2,3] ->> const 1 2
-- foldr const undefined [1,2,3] ->> 1