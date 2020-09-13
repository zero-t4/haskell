module Demo where

infixl 6 :+:
infixl 7 :*:

data Expr = Val Int
  | Expr :+: Expr
  | Expr :*: Expr
-- | Expr :-: Expr
 deriving (Show, Eq)

expr1 = Val 2 :+: Val 3 :*: Val 4
expr2 = (Val 2 :+: Val 3) :*: Val 4

a = Val 2 :+: Val 2 == Val 4
-- False

eval :: Expr -> Int
eval (Val n)     = n
eval (e1 :+: e2) =  eval e1 + eval e2
eval (e1 :*: e2) =  eval e1 * eval e2

b = eval expr1
-- 14

d = eval expr2
-- 20

e = eval (Val 2 :+: Val 2) == eval (Val 4)
-- True

expand :: Expr -> Expr
expand ((e1 :+: e2) :*: e) = expand e1 :*: expand e :+: expand e2 :*: expand e
expand (e :*: (e1 :+: e2)) = expand e :*: expand e1 :+: expand e :*: expand e2
expand (e1 :+: e2)         = expand e1 :+: expand e2
expand (e1 :*: e2)         = expand e1 :*: expand e2
expand e                   = e

f = expand expr1
-- Val 2 :+: Val 3 :*: Val 4
