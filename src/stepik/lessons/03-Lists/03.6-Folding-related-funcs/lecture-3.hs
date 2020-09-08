module Demo where

import Data.List (scanl)

facs :: (Num a, Enum a) => [a]
facs = scanl (*) 1 [1..]

partialSum :: Num a => [a] -> [a]
partialSum = scanl (+) 0

a = facs !! 5
-- 120

b = facs !! 50
-- 30414093201713378043612608166064768844377641568960512000000000000

c = partialSum [1..10]
-- [0,1,3,6,10,15,21,28,36,45,55]

d = take 15 . partialSum . map (**(-1)) $ facs
-- [0.0,1.0,2.0,2.5,2.6666666666666665,2.708333333333333,2.7166666666666663,2.7180555555555554,2.7182539682539684,2.71827876984127,2.7182815255731922,2.7182818011463845,2.718281826198493,2.7182818282861687,2.7182818284467594]