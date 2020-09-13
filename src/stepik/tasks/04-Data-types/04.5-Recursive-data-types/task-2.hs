{-|
  Рассмотрим еще один пример рекурсивного типа данных:

  data Nat = Zero | Suc Nat

  Элементы этого типа имеют следующий вид: Zero, Suc Zero, Suc (Suc Zero), Suc (Suc (Suc Zero)), и так далее.
  Таким образом мы можем считать, что элементы этого типа - это натуральные числа в унарной системе счисления.

  Мы можем написать функцию, которая преобразует Nat в Integer следующим образом:

  fromNat :: Nat -> Integer
  fromNat Zero = 0
  fromNat (Suc n) = fromNat n + 1

  Реализуйте функции сложения и умножения этих чисел, а также функцию, вычисляющую факториал.
-}

data Nat = Zero | Suc Nat

fromNat :: Nat -> Integer
fromNat Zero = 0
fromNat (Suc n) = fromNat n + 1

add :: Nat -> Nat -> Nat
add Zero x = x
add (Suc x) y = add x (Suc y)

mul :: Nat -> Nat -> Nat
mul Zero _ = Zero
mul (Suc x) y = add (mul x y) y

fac :: Nat -> Nat
fac Zero = Suc Zero
fac n1@(Suc n) = mul n1 (fac n)
