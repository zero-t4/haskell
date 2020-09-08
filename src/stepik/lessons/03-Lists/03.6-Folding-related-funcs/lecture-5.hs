module Demo where

import Prelude hiding (iterate)

unfold :: (b -> (a,b)) -> b -> [a]
unfold f ini =
  let (x,init) = f ini
  in x : unfold f init

{-|
  iterate f x == [x, f x, f (f x), f (f (f x)), ..]

  iterate :: (a -> a) -> a -> [a]
-}

iterate f = unfold (\x -> (x, f x))

a = take 5 . iterate (^2) $ 2
-- [2,4,16,256,65536]
