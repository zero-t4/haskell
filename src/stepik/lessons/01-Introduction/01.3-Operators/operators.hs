{- operators can be defined from those symbols
! # $ % & * + . / < = > ? @ \ ^ | - ~ :
-}

infixl 6 *+*

a *+* b = a ^ 2 + b ^ 2
-- (*+*) a b = a ^ 2 + b ^ 2

b = 10 *+* 4
-- 116