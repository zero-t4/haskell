{-|
  Какому известному вам библиотечному оператору, конструктору или функции эквивалентно выражение uncurry (flip const)?
-}

-- snd

{-|
  :t uncurry (flip const)    -- uncurry (flip const) :: (b, c) -> c
  :t snd                                      -- snd :: (a, b) -> b
-}