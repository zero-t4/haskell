a = []
-- empty list

b = 3 : []
-- [3]

c = 5 : 3 : []
-- [5,3]

d = 7 : c
-- [7,5,3]

e = [5,3] == c
-- True

cons42 = (42 :)

-- :t cons42
-- cons42 :: [Integer] -> [Integer]

f = cons42 [5]
-- [42,5]