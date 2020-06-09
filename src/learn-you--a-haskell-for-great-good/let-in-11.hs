-- Let In
cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in  sideArea + 2 * topArea

-- Let in its a expression, so it can be put anywhere
1 * (let a = 2 in a + 3) + 4
-- 9

[let square x = x * x in (square 2, square 3, square 4)]
-- [(4,9,16)]

(let a = 100; b = 200; c = 300 in a*b*c, let foo="Hey "; bar = "there!" in foo ++ bar)
-- (6000000,"Hey there!")

let (a,b,c) = (1,2,3) in (a+b+c) * 100
-- 600
