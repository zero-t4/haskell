{-|
  Целое число можно представить как список битов со знаком.

  Реализуйте функции сложения и умножения для таких целых чисел, считая, что младшие биты идут в начале списка, а старшие — в конце. Можно считать, что на вход не будут подаваться числа с ведущими нулями.
-}

data Bit = Zero | One deriving (Eq, Show)
data Sign = Minus | Plus
data Z = Z Sign [Bit]

sum' bits = sum [2^i | (x,i) <- zip bits [0..((length bits)-1)], x == One]

convToInt (Z Plus  bits) =  sum' bits
convToInt (Z Minus bits) = -sum' bits

toBin 1 = [One]
toBin 0 = [Zero]
toBin n | mod n 2 == 0 = Zero : toBin (div n 2)
  | otherwise    = One  : toBin (div n 2)

op_add z1 z2 = convToInt z1 + convToInt z2
op_mul z1 z2 = convToInt z1 * convToInt z2

add :: Z -> Z -> Z
add z1 z2 = Z sign_num (toBin (abs result)) where
  result   = op_add z1 z2
  sign_num = if result >=0 then Plus else Minus

mul :: Z -> Z -> Z
mul z1 z2 = Z sign_num (toBin (abs result)) where
  result   = op_mul z1 z2
  sign_num = if result >=0 then Plus else Minus