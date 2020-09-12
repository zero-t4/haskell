-- :type 'c'
-- 'c' :: Char

-- :kind Char
-- Char :: *

-- :k Int
-- Int :: *

-- :k Maybe
-- Maybe :: * -> *

-- :k Maybe Int
-- Maybe Int :: *

{-|
:k Maybe Int Char

  <interactive>:1:1: error:
      • Expected kind ‘* -> k0’, but ‘Maybe Int’ has kind ‘*’
      • In the type ‘Maybe Int Char’
-}

-- :k Either Int Char
-- Either Int Char :: *


-- :k [] Int
-- [] Int :: *

-- :k [Int]
-- [Int] :: *

{-
:k Int -> []
  <interactive>:1:8: error:
      • Expecting one more argument to ‘[]’
        Expected a type, but ‘[]’ has kind ‘* -> *’
      • In the type ‘Int -> []’

-}

-- :k Int -> [] Int
-- Int -> [] Int :: *

-- :k (,)
-- (,) :: * -> * -> *

-- :k (,,)
-- (,,) :: * -> * -> * -> *

-- :k (->)
-- (->) :: * -> * -> *

-- :k (->) Char Char
-- (->) Char Char :: *

-- :k (->) Char [Char]
-- (->) Char [Char] :: *
