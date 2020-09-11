module Demo where

import Data.List

fromMaybe (Just x) = x
fromMaybe Nothing  = error "!!!"

{-|
  *Demo> fromMaybe Nothing
  *** Exception: !!!
  CallStack (from HasCallStack):
    error, called at lecture-4.hs:6:22 in main:Demo
-}

fromMaybe' ~(Just x) = x
fromMaybe' Nothing   = error "Will never came here"
-- fromMaybe' Nothing   = error "Will never came here" -- Could be commented

{-|
  *Demo> fromMaybe' Nothing
  *** Exception: lecture-4.hs:(12,1)-(13,51): Non-exhaustive patterns in Just x
-}

(***) :: (a -> b) -> (c -> d) -> (a, c)-> (b, d)
(***) f g (a, c) = (f a, g c)
a = succ *** pred $ (1,2)
-- (2,1)

b = const 1 *** const 2 $ (5,5)
-- (1,2)

c = const 1 *** const 2 $ (undefined,undefined)
-- (1,2)

(****) :: (a -> b) -> (c -> d) -> (a, c)-> (b, d)
(****) f g ~(a, c) = (f a, g c)
d = const 1 **** const 2 $ undefined
-- (1,2)
