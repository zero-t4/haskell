{-|
  Используя оператор $, перепишите выражение logBase 4 (min 20 (9 + 7)) без скобок.
  (Разделяйте все токены одним пробелом.)
-}

result = logBase 4 $ min 20 $ 9 + 7
-- 2.0