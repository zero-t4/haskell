-- To reduce polymorphic add types

mono :: Char -> Char
mono a = a

-- mono 'a'
-- 'a'

-- mono True
-- error: Couldn't match expected type ‘Char’ with actual type ‘Bool’

-- id True
-- True

-- hindley–milner type system
semiMono :: Char -> a -> Char
semiMono x y = x