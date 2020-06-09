-- Guards
bmiTell :: RealFloat a => a -> a -> String
bmiTell weight height
    | weight / height ^ 2 <= 18.5 = "You're underweight"
    | weight / height ^ 2 <= 25.0 = "You're supposedly normal ugly"
    | weight / height ^ 2 <= 30.0 = "You're overweight"
    | otherwise                   = "None"

-- And short one (with pre computed value check)
bmiTell' :: (RealFloat a) => a -> a -> String
bmiTell' weight height
    | bmi <= 18.5 = "You're underweight"
    | bmi <= 25.0 = "You're supposedly normal"
    | bmi <= 30.0 = "You're overweight!"
    | otherwise   = "None"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat = 30.0
-- alternative
--  where bmi = weight / height ^ 2
--        (skinny, normal, fat) = (18.5, 25.0, 30.0)

max' :: (Ord a) => a -> a -> a
max' a b
    | a > b     = a
    | otherwise = b
