a = sum (filter (> 10) (map (*2) [2..10]))
same = sum $ filter (> 10) $ map (*2) [2..10]