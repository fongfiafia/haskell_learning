module Example3 where

count :: Int -> [Int] -> Int
count n list = go 0 list
    where
        go :: Int -> [Int] -> Int
        go result list = 
            if null list
            then result
            else if n == head list 
                then go (result+1) (tail list)
                else go  result (tail list)