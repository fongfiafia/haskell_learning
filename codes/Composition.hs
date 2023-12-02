takeEven5 :: [[a]] -> [[a]]
takeEven5 = take 5 .filter (even . length)