sum1 :: [Int] -> Int
sum1 [] = 0
sum1 (x:xs) = x + sum1 xs

sum2 :: [Int] -> Int
sum2 = go 0
 where 
    go :: Int -> [Int] -> Int
    go acc [] = acc
    go acc (x:xs) = go (acc + x) xs