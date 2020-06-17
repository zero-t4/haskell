-- Tuples

a = (1, True)

b = (2, False, a)

-- Tuple can't contain only 1 element, because it becomes just a parentheses
-- not a tuple
c = (1)

-- Empty tuple
d = ()

fs = fst a
-- 1

sn = snd b
-- False

-- :t ('x', True)
-- ('x', True) :: (Char, Bool)

-- :t ()
-- () :: ()