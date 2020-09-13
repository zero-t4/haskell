module Demo where

data List a = Nil | Cons a (List a) deriving Show

-- :t Nil
-- Nil :: List a

-- :t Cons 'x' Nil
-- Cons 'x' Nil :: List Char

-- :t Cons 'y' (Cons 'x' Nil)
-- Cons 'y' (Cons 'x' Nil) :: List Char

{-|
data [] a = [] | a : ([] a)
-}
