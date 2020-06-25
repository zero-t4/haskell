{-|
  Реализуйте функцию seqA, находящую элементы следующей рекуррентной последовательности

  a0​=1; a1​=2; a2​=3; ak+3 ​= ak+2​ + ak+1 ​− 2ak​.
  Попытайтесь найти эффективное решение.

  GHCi> seqA 301
  1276538859311178639666612897162414
-}

seqA :: Integer -> Integer
seqA 0 = 1
seqA 1 = 2
seqA 2 = 3
seqA n
  | n > 2 = let
      helper acc1 acc2 acc3 0 = acc1
      helper acc1 acc2 acc3 n = helper acc2 acc3 ((acc3 + acc2) - 2*acc1) (n-1)
    in helper 1 2 3 n
  | otherwise = error "haha"


-- other people's solutions
seqA' :: Integer -> Integer
seqA' n = let
             helper _ _ p3 0 = p3
             helper _ p2 _ 1 = p2
             helper p1 _ _ 2 = p1
             helper p1 p2 p3 n = helper (p1 + p2 - 2 * p3) p1 p2 (n-1)
         in helper 3 2 1 n